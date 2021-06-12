package com.igeek.carplat.dao;

import com.igeek.carplat.entity.Brand;
import com.igeek.common.utils.DataSourceUtils;

import java.util.List;

/**
 * @Version 1.0
 * @Description TODO
 * @Author FangZhen
 * @Date 2021/6/8 22:26
 */
public class BrandDao extends BaseDao<Brand> implements IDao<Brand>{
    @Override
    public Brand selectOne(Object... params) throws Exception {
        return null;
    }

    //查询所有品牌
    @Override
    public List<Brand> selectAll(Object... params) throws Exception {
        String sql = "select * from brand ";
        List<Brand> list = this.getBeanList(DataSourceUtils.getConnection(), sql, Brand.class, params);
        return list;
    }

    @Override
    public String selectValue(Object... params) throws Exception {
        String sql ="select bname from brand where bid = ?";
        String bname = this.getSingleValue(DataSourceUtils.getConnection(), sql, params).toString();
        return bname;
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
    public int insert(Brand brand) throws Exception {
        return 0;
    }
}
