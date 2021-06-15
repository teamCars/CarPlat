package com.igeek.carplat.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @version 1.0
 * @Description 租车订单实体类
 * @Author sunziwei
 * @Date 2021/6/14 14:12
 */
public class InOrder {
    //订单id
    private String iid;
    //下单用户id
    private User user;
    //总金额
    private double total;
    //下单时间
    private Date idate;
    //订单状态 0未付款 1付款
    private int state;

    //收货人地址
    private String address;

    //订单详情列表
    private List<InOrderItems> inOrderItems = new ArrayList<>();


    public InOrder() {
    }

    public InOrder(String iid, User user, double total, Date idate, int state, String address, List<InOrderItems> inOrderItems) {
        this.iid = iid;
        this.user = user;
        this.total = total;
        this.idate = idate;
        this.state = state;
        this.address = address;
        this.inOrderItems = inOrderItems;
    }

    /**
     * 获取
     * @return iid
     */
    public String getIid() {
        return iid;
    }

    /**
     * 设置
     * @param iid
     */
    public void setIid(String iid) {
        this.iid = iid;
    }

    /**
     * 获取
     * @return user
     */
    public User getUser() {
        return user;
    }

    /**
     * 设置
     * @param user
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * 获取
     * @return total
     */
    public double getTotal() {
        return total;
    }

    /**
     * 设置
     * @param total
     */
    public void setTotal(double total) {
        this.total = total;
    }

    /**
     * 获取
     * @return idate
     */
    public Date getIdate() {
        return idate;
    }

    /**
     * 设置
     * @param idate
     */
    public void setIdate(Date idate) {
        this.idate = idate;
    }

    /**
     * 获取
     * @return state
     */
    public int getState() {
        return state;
    }

    /**
     * 设置
     * @param state
     */
    public void setState(int state) {
        this.state = state;
    }

    /**
     * 获取
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取
     * @return inOrderItems
     */
    public List<InOrderItems> getInOrderItems() {
        return inOrderItems;
    }

    /**
     * 设置
     * @param inOrderItems
     */
    public void setInOrderItems(List<InOrderItems> inOrderItems) {
        this.inOrderItems = inOrderItems;
    }


}
