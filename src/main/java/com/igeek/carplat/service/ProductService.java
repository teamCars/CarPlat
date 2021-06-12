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
    public PageVo<Product> findProducts(String bid,String type,Integer pageNow){
        try {
            //查询总记录数
            int myCounts = dao.selectValue(bid, bid).intValue();

            //计算总记录数
            int myPages = (int)(myCounts%9==0?myCounts/9:Math.ceil(myCounts/9.0));

            //计算每页起始值
            int begin = (pageNow-1)*9;

            //查询记录列表
            List<Product> list = dao.selectAll(bid, type, begin);

            //封装PageVO对象
            PageVo<Product> vo = new PageVo<>(pageNow,myCounts,myPages,bid,type,list);

            return vo;
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


}
