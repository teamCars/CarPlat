package com.igeek.carplat.dao;


import java.util.List;

/*统一的增删改查格式*/
public interface IDao<T> {
    //查询单个对象
    T selectOne(Object...params) throws Exception;

    //查询多个对象
    List<T> selectAll(Object...params) throws Exception;

    //查询单个值
    Object selectValue(Object...params) throws Exception;

    //更新
    int update(Object...params) throws Exception;

    //删除
    int delete(String id) throws Exception;

    //插入
    int insert(T t) throws Exception;
}
