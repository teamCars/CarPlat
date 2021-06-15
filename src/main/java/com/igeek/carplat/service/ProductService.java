package com.igeek.carplat.service;

import com.igeek.carplat.dao.ProductDao;
import com.igeek.carplat.entity.Product;
import com.igeek.carplat.vo.PageVo;
import com.igeek.common.utils.DataSourceUtils;

import java.sql.SQLException;
import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author FangZhen
 * @Date 2021/6/8 20:29
 */
public class ProductService {

    private ProductDao dao = new ProductDao();

    //查询6条活动商品信息
    public List<Product> findColdProducts(){
        try {
            return dao.selectAllCold();
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


    //查询6条最新商品信息
    public List<Product> findNewProducts(){
        try {
            dao.selectAllNew();
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

    //根据商品类别和商品名称模糊查询，分页查询
    public List<Product> findProducts(String name){
        try {
            List<Product> list = dao.selectAll(name);
            return list;
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

    //通过商品编号查询商品信息
    public Product findProductByCid(String cid){
        try {
            return dao.selectOne(cid);
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


    public boolean insertCar(Product product){
        try {
            int i = dao.insert(product);
            return i>0?true:false;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

}
