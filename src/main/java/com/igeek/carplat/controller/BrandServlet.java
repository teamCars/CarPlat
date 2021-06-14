package com.igeek.carplat.controller;

import com.google.gson.Gson;
import com.igeek.carplat.entity.Brand;
import com.igeek.carplat.service.BrandService;

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
 * @Date 2021/6/8 22:32
 */
@WebServlet(name = "BrandServlet",urlPatterns = "/brand")
public class BrandServlet extends BaseServlet{

    private BrandService brandService = new BrandService();

    //查询品牌的列表
    public void findAllBrands(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        List<Brand> brands = brandService.findAllBrands();

        Gson gson = new Gson();
        String json = gson.toJson(brands);

        response.getWriter().write(json);
    }


}
