package com.igeek.carplat.dao;

import com.igeek.carplat.entity.Product;

import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author FangZhen
 * @Date 2021/6/8 19:21
 */
public class ProductDao extends BaseDao<Product> implements IDao<Product> {
    @Override
    public Product selectOne(Object... params) throws Exception {
        return null;
    }

    @Override
    public List<Product> selectAll(Object... params) throws Exception {
        return null;
    }

    @Override
    public Object selectValue(Object... params) throws Exception {
        return null;
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
