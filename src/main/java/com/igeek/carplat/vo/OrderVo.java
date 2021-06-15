package com.igeek.carplat.vo;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @version 1.0
 * @Description 实现订单页的辅助类
 * @Author sunziwei
 * @Date 2021/6/14 20:30
 */
public class OrderVo {
    //总记录数
    private int myCount;
    //总页数
    private int myPages;
    //当前页
    private int pageNow;
    //查询出的需要显示的订单信息
    private List<Map<String,Object>> orderItems = new ArrayList<>();


    public OrderVo() {
    }

    public OrderVo(int myCount, int myPages, int pageNow, List<Map<String, Object>> orderItems) {
        this.myCount = myCount;
        this.myPages = myPages;
        this.pageNow = pageNow;
        this.orderItems = orderItems;
    }

    /**
     * 获取
     * @return myCount
     */
    public int getMyCount() {
        return myCount;
    }

    /**
     * 设置
     * @param myCount
     */
    public void setMyCount(int myCount) {
        this.myCount = myCount;
    }

    /**
     * 获取
     * @return myPages
     */
    public int getMyPages() {
        return myPages;
    }

    /**
     * 设置
     * @param myPages
     */
    public void setMyPages(int myPages) {
        this.myPages = myPages;
    }

    /**
     * 获取
     * @return pageNow
     */
    public int getPageNow() {
        return pageNow;
    }

    /**
     * 设置
     * @param pageNow
     */
    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }

    /**
     * 获取
     * @return orderItems
     */
    public List<Map<String, Object>> getOrderItems() {
        return orderItems;
    }

    /**
     * 设置
     * @param orderItems
     */
    public void setOrderItems(List<Map<String, Object>> orderItems) {
        this.orderItems = orderItems;
    }

    public String toString() {
        return "OrderVo{myCount = " + myCount + ", myPages = " + myPages + ", pageNow = " + pageNow + ", orderItems = " + orderItems + "}";
    }
}
