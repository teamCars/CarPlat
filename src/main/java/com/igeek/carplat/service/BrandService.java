package com.igeek.carplat.service;

import com.igeek.carplat.dao.BrandDao;
import com.igeek.carplat.entity.Brand;
import com.igeek.common.utils.DataSourceUtils;

import java.sql.SQLException;
import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author FangZhen
 * @Date 2021/6/8 22:33
 */
public class BrandService {

    private BrandDao dao = new BrandDao();

    //查询所有的品牌
    public List<Brand> findAllBrands(){
        try {
            return dao.selectAll();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    //通过bid查询bname的方法
    public String findBname(String bid){
        try {
            return dao.selectValue(bid);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }



}
