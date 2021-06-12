package com.igeek.carplat.dao;

import com.igeek.carplat.entity.Product;
import com.igeek.common.utils.DataSourceUtils;

import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author FangZhen
 * @Date 2021/6/8 19:21
 */
public class ProductDao extends BaseDao<Product> implements IDao<Product> {

    //查询6条活动产品
    public List<Product> selectAllCold() throws Exception {
        String sql ="select cid, type, carImg, price, bid from car where is_cold = 1 limit 0,6? ";
        List<Product> list = this.getBeanList(DataSourceUtils.getConnection(), sql, Product.class);
        return list;
    }

    //查询6条最新产品
    public List<Product> selectAllNew() throws Exception {
        String sql ="select cid, type, carImg, price, bid from car order by pdate desc limit 0,6? ";
        List<Product> list = this.getBeanList(DataSourceUtils.getConnection(), sql, Product.class);
        return list;
    }


    @Override
    public Product selectOne(Object... params) throws Exception {
        String sql = "select cid , type , carImg , price , bid ,  from car where cid = ?";
        Product product = this.getBean(DataSourceUtils.getConnection(), sql, Product.class, params);
        return product;
    }

    //查询商品列表
    @Override
    public List<Product> selectAll(Object... params) throws Exception {
        Object bid = params[0];
        String sql = "";
        if(bid==null || bid.equals("")){
            sql = "select cid, type, carImg, price, bid from car where  type like concat('%',?,'%') limit ?,9";
            List<Product> list = this.getBeanList(DataSourceUtils.getConnection(), sql, Product.class, params[1],params[2]);
            return list;
        }else if(bid!=null || !bid.equals("")){
            sql = "select cid, type, carImg, price, bid from car where bid = ? and type like concat('%',?,'%') limit ?,9";
            List<Product> list = this.getBeanList(DataSourceUtils.getConnection(), sql, Product.class, params);
            return list;
        }
        return null;
    }

    //查询商品列表的总记录数
    @Override
    public Long selectValue(Object... params) throws Exception {
        Object bid = params[0];
        String sql ="";
        if(bid==null || bid.equals("")){
            sql = "select count(*) from car where type like concat('%',?,'%') ";
            Long value = (Long)this.getSingleValue(DataSourceUtils.getConnection(),sql,params);
            return value;
        }else if(bid!=null || !bid.equals("")){
            sql = "select count(*) from car where bid = ? and type like concat('%',?,'%') ";
            Long value = (Long)this.getSingleValue(DataSourceUtils.getConnection(),sql,params);
            return value;
        }
        return 0L;
    }

    @Override
    public int update(Object... params) throws Exception {
        return 0;
    }

    @Override
    public int delete(String id) throws Exception {
        return 0;
    }

    @Override
    public int insert(Product product) throws Exception {
        return 0;
    }
}
