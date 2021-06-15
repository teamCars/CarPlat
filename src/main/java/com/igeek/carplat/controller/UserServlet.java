package com.igeek.carplat.controller;

import com.igeek.carplat.entity.User;
import com.igeek.carplat.service.UserService;
import com.igeek.common.utils.CommonUtils;
import com.igeek.common.utils.MD5Utils;
import com.igeek.common.utils.MailUtils;
import org.apache.commons.beanutils.BeanUtils;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet(name = "UserServlet",urlPatterns = "/user")
public class UserServlet extends BaseServlet {

    private UserService service = new UserService();
    private Cookie nameCookie;
    private Cookie pwdCookie;
    private HttpSession session;

    /**
     * @methodName register
     * @Description 用户注册
     * @param  request
     * @param  response
     * @return void
     */
    public void register(HttpServletRequest request,HttpServletResponse response) throws InvocationTargetException, IllegalAccessException, MessagingException, IOException {
        //获取请求参数
        Map<String, String[]> map = request.getParameterMap();
        //利用无参构造方法
        User user = new User();
        //没有date，不用自定义转换器
        //将map里键值对的值注入到user对象中
        BeanUtils.populate(user,map);
        //加密密码，设置给对象
        String pwd = MD5Utils.md5(map.get("pwd")[0]);
        user.setPwd(pwd);
        //通过uuid获得随机的uid，设置给对象
        String uid = CommonUtils.getUUID().replaceAll("-", "");
        user.setUid(uid);
        //通过uuid获得随机的激活码，设置给对象
        String code = CommonUtils.getUUID().replaceAll("-","");
        user.setCode(code);
        //dao层插入，service层注册，调用service试现注册
        boolean flag = service.register(user);
        //注册成功，发送验证码，重定向到注册成功界面
        if(flag){
            String msg = "<a href = 'http://192.168.22.5:8899/user?method=active&code="+code+"'>点击该码"+code+"激活账户</a>";
            MailUtils.sendMail(user.getEmail(),"激活账户",msg);
            response.sendRedirect("registSuccess.jsp");
        }
        //注册失败，重定向到注册失败界面
        else {
            response.sendRedirect("registFail.jsp");
        }

    }

    /**
     * @methodName active
     * @Description 激活用户
     * @param  request
     * @param  response
     * @return void
     */
    public void active(HttpServletRequest request,HttpServletResponse response) throws IOException {
        //获取请求参数
        String code = request.getParameter("code");
        //dao层设置state，service激活账户
        //调用service层，激活账户
        boolean flag = service.active(code);
        //如果激活成功，跳转到首页
        if(flag){
            //查询出code对应对象的用户名和密码
            User user = service.findUser(code);
            nameCookie = new Cookie("username",user.getName());
            pwdCookie = new Cookie("pwd",user.getPwd());
            nameCookie.setMaxAge(7*24*60*60);
            pwdCookie.setMaxAge(7*24*60*60);
            response.addCookie(nameCookie);
            response.addCookie(pwdCookie);
            session = request.getSession();
            session.setAttribute("user",user);
            response.sendRedirect("firstPageAfter.jsp");
        }
        else {
            //如果激活失败，就跳转到error页面
            response.sendRedirect("error.jsp");
        }

    }

    /**
     * @methodName validate
     * @Description 校验该手机号是否已被注册
     * @param  request
     * @param  response
     * @return void
     */
    public void validate(HttpServletRequest request,HttpServletResponse response) throws IOException {
        //获取请求参数
        String phone = request.getParameter("phone");
        //dao层查询，service判断，调用service层，判断
        boolean flag = service.validate(phone);
        //将结果包装成json数据，响应回去
        String str = "{\"flag\":"+flag+"}";
        PrintWriter out = response.getWriter();
        out.write(str);
        out.flush();
        out.close();
    }


    public void validateUsername(HttpServletRequest request,HttpServletResponse response) throws IOException {
        //获取请求参数
        String username = request.getParameter("username");
        //dao层查询，service判断，调用service层，判断
        boolean flag = service.validateUsername(username);
        //将结果包装成json数据，响应回去
        String str = "{\"flag\":"+flag+"}";
        PrintWriter out = response.getWriter();
        out.write(str);
        out.flush();
        out.close();
    }

    /**
     * @methodName login
     * @Description 登录功能
     * @param  request
     * @param  response
     * @return void
     */
    public void login(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        //获取请求参数
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        //密码加密后再传入
        String mipwd = MD5Utils.md5(pwd);
        //dao层查询，service层判断查询到没
        //调用service层登录
        User user = service.login(username, mipwd);
        //如果登录成功，跳转到登录成功的首页
        if(user != null){
            if(nameCookie == null || pwdCookie == null){
                //实现自动登录
                nameCookie = new Cookie("username",username);
                pwdCookie = new Cookie("pwd",pwd);
                nameCookie.setMaxAge(7*24*60*60);
                pwdCookie.setMaxAge(7*24*60*60);
                response.addCookie(nameCookie);
                response.addCookie(pwdCookie);
            }
            //做登录控制
            session = request.getSession();
            session.setAttribute("user",user);
            response.sendRedirect("firstPageAfter.jsp");
        }
        else {
            //登录失败，跳转到登录页面，然后信息回显，并显示失败原因
            request.setAttribute("username",username);
            request.setAttribute("pwd",pwd);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }

    }

    public void logout(HttpServletRequest request,HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        //跳转到首页
        response.sendRedirect("firstPage.jsp");
    }
}
