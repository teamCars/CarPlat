package com.igeek.carplat.controller;

import com.igeek.carplat.entity.*;
import com.igeek.carplat.service.InOrderService;
import com.igeek.carplat.vo.OrderVo;
import com.igeek.common.utils.CommonUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.Map;
import java.util.Set;

@WebServlet(name = "InOrderServlet",urlPatterns = "/inOrder")
public class InOrderServlet extends BaseServlet {

    InOrderService service = new InOrderService();

    //将购物车中的信息加入订单
    public void submitOrder(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        //从会话域中取出用户对象
        User user = (User)session.getAttribute("user");
        //从会话域中取出购物车对象
        Cart cart = (Cart)session.getAttribute("cart");

        //封装订单对象
        //创建订单对象
        InOrder inOrder = new InOrder();
        //订单id
        String iid = CommonUtils.getUUID().replaceAll("-", "");
        inOrder.setIid(iid);
        //下单用户
        inOrder.setUser(user);
        //总金额
        inOrder.setTotal(cart.getTotal());
        //下单时间
        inOrder.setIdate(new Date());
        //订单状态
        inOrder.setState(0);
        //收货人地址(先为空)


        //封装订单详情对象
        //遍历购物车对象的map集合
        Map<String, CartItem> map = cart.getMap();
        Set<String> cids = map.keySet();
        for (String cid : cids) {
            CartItem cartItem = map.get(cid);
            //创建详情对象
            InOrderItems inOrderItems = new InOrderItems();
            //详情id
            String itemsId = CommonUtils.getUUID().replaceAll("-", "");
            inOrderItems.setItemId(itemsId);
            //订车天数
            inOrderItems.setDayNum(cartItem.getBuyNum());
            //小计
            inOrderItems.setSubTotal(cartItem.getSubTotal());
            //汽车对象
            inOrderItems.setProduct(cartItem.getProduct());
            //订单对象
            inOrderItems.setInOrder(inOrder);
            //将订单详情对象加入订单的集合中
            inOrder.getInOrderItems().add(inOrderItems);
        }


        //传入订单对象，使用事务插入到数据库中
        boolean flag = service.insertInOrder(inOrder);
        if(flag){
            //插入成功，将订单对象加入到会话域中
            session.setAttribute("inOrder",inOrder);
            //响应重定向到订单页面
            response.sendRedirect("Payment.jsp");
        }else {
            //提示订单提交失败
            request.setAttribute("msg","提交订单失败");
            //请求转发到购物车页面
            request.getRequestDispatcher("shopCar.jsp").forward(request,response);
        }

    }

    //确认订单
    public void affirmOrder(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        //获取请求参数：地址
        String address = request.getParameter("address");

        //获取订单id
        HttpSession session = request.getSession();
        InOrder order = (InOrder)session.getAttribute("inOrder");
        String iid = order.getIid();

        //更新订单的地址
        boolean flag = service.updateAddress(address, iid);

        if(flag){
            //如果更新成功跳转到alipay的jsp
            response.sendRedirect("alipay.trade.page.pay.jsp");
        }
        else {
            request.setAttribute("msg","更新收件地址失败");
            request.getRequestDispatcher("Payment.jsp").forward(request,response);
        }

    }

    //查询我的订单
    public void findMyOrder(HttpServletRequest request,HttpServletResponse response) throws IOException {
        //获取会话对象
        HttpSession session = request.getSession();
        //获取用户对象
        User user = (User) session.getAttribute("user");

        //获取当前页
        String page = request.getParameter("pageNow");
        int pageNow = 0;
        if(page == null){
            pageNow = 1;
        }else {
            pageNow = Integer.parseInt(page);
        }

        //直接连接查询，查出所有需要的结果，封装成vo对象
        OrderVo orderVo = service.findMyOrder(user.getUid(), pageNow);

        //如果vo对象不为空，将vo对象放到session域中
        if(orderVo != null){
            session.setAttribute("orderVo",orderVo);
            //响应重定向到我的订单页面
            response.sendRedirect("myOrder.jsp");
        }

    }

}
