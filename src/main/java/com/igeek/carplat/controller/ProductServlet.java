package com.igeek.carplat.controller;

import com.igeek.carplat.entity.Product;
import com.igeek.carplat.service.BrandService;
import com.igeek.carplat.service.ProductService;
import com.igeek.carplat.vo.PageVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author FangZhen
 * @Date 2021/6/8 20:28
 */
@WebServlet(name = "ProductServlet", urlPatterns = "/product")
public class ProductServlet extends BaseServlet {

    private ProductService productService = new ProductService();
    private BrandService brandService = new BrandService();

    //展示首页
    public void active(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //活动数据
        List<Product> coldProducts = productService.findColdProducts();

        //最新数据
        List<Product> newProducts = productService.findNewProducts();

        //跳转至页面
        request.setAttribute("coldProducts", coldProducts);
        request.setAttribute("newProducts", newProducts);
        request.getRequestDispatcher("active.jsp").forward(request, response);

    }

    //通过品牌类别和商品型号的分页查询列表
    public void findProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bid = request.getParameter("bid");
        String name = request.getParameter("type");
        String page = request.getParameter("pageNow");

        //通过bid查询type,并且放至请求域，供导航条使用
        if (bid != null && !bid.equals("")) {
            String bname = brandService.findBname(bid);
            if (bname != null) {
                request.setAttribute("bname", bname);
            }
        }

        //搜索时的车辆型号
        String type = "";
        if (name == null) {
            type = "";
        } else {
            type = name;
        }


        //分页的当前页码
        int pageNow = 1;
        if (page == null) {
            pageNow = 1;
        }else{
            pageNow = Integer.parseInt(page);
        }

        //查询车辆列表
        PageVo<Product> vo = productService.findProducts(bid,type,pageNow);
        request.setAttribute("vo",vo);

        //足迹

        //请求转发
        request.getRequestDispatcher("search.jsp").forward(request,response);
    }

    //通过车辆编号查询车辆信息
    public void findProductByCid(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        String cid = request.getParameter("cid");
        Product product = productService.findProductByCid(cid);
        request.setAttribute("product",product);

        //获取车辆的品牌
        String bname = request.getParameter("bname");
        if(bname!=null && !bname.equals("")){
            request.setAttribute("bname",bname);
        }

        //获取相关车辆分页搜索的信息
        String bid = request.getParameter("bid");
        String type =request.getParameter("type");
        String pageNow = request.getParameter("pageNow");

        request.setAttribute("bid",bid);
        request.setAttribute("type",type);
        request.setAttribute("pageNow",pageNow);

        //产生Cookie足迹


        request.getRequestDispatcher("detail.jsp").forward(request,response);

    }


}
