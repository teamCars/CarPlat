package com.igeek.carplat.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "f2",
        urlPatterns = "/firstPageAfter.jsp" )
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //获取会话对象
        HttpServletRequest request = (HttpServletRequest)req;
        HttpSession session = request.getSession();
        //从会话对象获取信息
        Object user = session.getAttribute("user");
        //判断当前资源，是否有登录者信息，如果没有则不放行
        if(user == null){
            request.getRequestDispatcher("login.jsp");
        }


        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
