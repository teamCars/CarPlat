package com.igeek.carplat.entity;

/**
 * @version 1.0
 * @Description 租车订单详情实体类
 * @Author sunziwei
 * @Date 2021/6/14 14:13
 */
public class InOrderItems {
    //详情id
    private String itemId;
    //订车天数
    private int dayNum;
    //小计
    private double subTotal;
    //汽车对象
    private Product product = new Product();
    //订单对象
    private InOrder inOrder = new InOrder();


    public InOrderItems() {
    }

    public InOrderItems(String itemId, int dayNum, double subTotal, Product product, InOrder inOrder) {
        this.itemId = itemId;
        this.dayNum = dayNum;
        this.subTotal = subTotal;
        this.product = product;
        this.inOrder = inOrder;
    }

    /**
     * 获取
     * @return itemId
     */
    public String getItemId() {
        return itemId;
    }

    /**
     * 设置
     * @param itemId
     */
    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    /**
     * 获取
     * @return dayNum
     */
    public int getDayNum() {
        return dayNum;
    }

    /**
     * 设置
     * @param dayNum
     */
    public void setDayNum(int dayNum) {
        this.dayNum = dayNum;
    }

    /**
     * 获取
     * @return subTotal
     */
    public double getSubTotal() {
        return subTotal;
    }

    /**
     * 设置
     * @param subTotal
     */
    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    /**
     * 获取
     * @return product
     */
    public Product getProduct() {
        return product;
    }

    /**
     * 设置
     * @param product
     */
    public void setProduct(Product product) {
        this.product = product;
    }

    /**
     * 获取
     * @return inOrder
     */
    public InOrder getInOrder() {
        return inOrder;
    }

    /**
     * 设置
     * @param inOrder
     */
    public void setInOrder(InOrder inOrder) {
        this.inOrder = inOrder;
    }

}
