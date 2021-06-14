package com.igeek.carplat.controller;

import com.igeek.carplat.entity.Cart;
import com.igeek.carplat.entity.CartItem;
import com.igeek.carplat.entity.Product;
import com.igeek.carplat.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "CartServlet",urlPatterns = {"/cart"})
public class CartServlet extends BaseServlet {

    private ProductService productService =new ProductService();

    //加入购物车
    public void addCart(HttpServletRequest request,HttpServletResponse response) throws IOException{
        //1.获得请求参数
        //获得商品编号
        String cid = request.getParameter("cid");
        Product product=productService.findProductByCid(cid);
        //获得商品购买数量
        int buyNum = Integer.parseInt(request.getParameter("buyNum"));
        //计算小计
        double subTotal =buyNum*product.getPrice();


        //3.从会话中获取购物车信息
        HttpSession session=request.getSession();
        Cart cart=(Cart)session.getAttribute("cart");

        //若是第一次加入购物车
        if(cart==null){
            cart=new Cart();
        }

        //4.获取会话中购物车的明细CartItem信息
        Map<String,CartItem>map=cart.getMap();//map key-->pid value-->CartItem

        double newSubTotal=subTotal;
        //5.判断购物车明细是否包含此次加入的商品信息
        if(map.containsKey(cid)){   //若包含则合并
            buyNum+=map.get(cid).getBuyNum();   //map.get(pid).getBuyNum()  从会话中获取当前想要合并进来的商品
            newSubTotal=buyNum * map.get(cid).getProduct().getPrice();
        }

        //6.当前加入购物车的时明细
        CartItem cartItem=new CartItem(product,buyNum,newSubTotal);

        //7.购物车
        map.put(cid,cartItem);
        //设置购物项
        cart.setMap(map);
        //设置总金额
        cart.setTotal(cart.getTotal()+subTotal);

        //8.会哈作用域中添加cart信息
        session.setAttribute("cart",cart);
        //9.响应重定向至cart.jsp
        response.sendRedirect("shopCar.jsp");
    }
}
