package com.igeek.carplat.controller;

import com.igeek.carplat.entity.Product;
import com.igeek.carplat.service.BrandService;
import com.igeek.carplat.service.ProductService;
import com.igeek.carplat.vo.PageVo;
import com.igeek.common.utils.CommonUtils;
import com.igeek.common.utils.QiniuUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author FangZhen
 * @Date 2021/6/8 20:28
 */
@WebServlet(name = "ProductServlet", urlPatterns = "/product")
@MultipartConfig
public class ProductServlet extends BaseServlet {

    private ProductService productService = new ProductService();
    private BrandService brandService = new BrandService();

    //展示首页
    public void active(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
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
        String name = request.getParameter("type");
        String page = request.getParameter("pageNow");

        if(name!=null && !name.equals("")){
            List<Product> list = productService.findProducts(name);
            request.getSession().setAttribute("list",list);
            response.sendRedirect("search.jsp");
        }




       /* //分页的当前页码
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
        request.getRequestDispatcher("search.jsp").forward(request,response);*/
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


    //注册成为车主
    public void becomeCarMaster(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException, ParseException {
        //获取表单信息
        String carNum = request.getParameter("carNum");
        String type = request.getParameter("type");
        Double price = Double.parseDouble(request.getParameter("price"));


        String pdate = request.getParameter("pdate");

        //将string转为date
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(pdate);

        Part img1 = request.getPart("carImg");
        QiniuUtils qiniuUtils = new QiniuUtils();
        String carImg = qiniuUtils.uploadStream(img1.getInputStream());
        Part img2 = request.getPart("certificateImg");
        String certificateImg = qiniuUtils.uploadStream(img2.getInputStream());

        //创建车辆对象
        String cid = CommonUtils.getUUID().replaceAll("-", "");
        Product car = new Product(cid,carNum,carImg,certificateImg,date,type,price);

        //将车辆插入到表中
        boolean flag = productService.insertCar(car);
        if(flag){
            //跳转到首页
            response.sendRedirect("firstPageAfter.jsp");
        }else {
            //数据回显
            request.setAttribute("car",car);
            request.getRequestDispatcher("toCar.jsp").forward(request,response);
        }
        //这里还应该获取会话中的用户对象，然后修改用户表中车辆的id。但因为表中缺乏字段，暂时不做这个功能


    }
}
