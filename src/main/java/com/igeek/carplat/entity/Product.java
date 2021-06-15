package com.igeek.carplat.entity;

import java.util.Date;

/**
 * @Version 1.0
 * @Description TODO
 * @Author FangZhen
 * @Date 2021/6/8 19:21
 */
public class Product {

    private String cid;    // 汽车id
    private String carNum;   //车牌号码
    private String carImg;   //汽车照片
    private String certificateImg;   //行驶证照片
    private String bid;   //汽车品牌id
    private int is_cold;   //是否冷门产品
    private Date date;     //时间
    private String type;   //型号
    private double price;     //价格


    public Product() {
    }

    public Product(String cid, String carNum, String carImg, String certificateImg, Date date, String type, double price) {
        this.cid = cid;
        this.carNum = carNum;
        this.carImg = carImg;
        this.certificateImg = certificateImg;
        this.date = date;
        this.type = type;
        this.price = price;
    }

    public Product(String cid, String carNum, String carImg, String certificateImg, String bid, int is_cold, Date date, String type, double price) {
        this.cid = cid;
        this.carNum = carNum;
        this.carImg = carImg;
        this.certificateImg = certificateImg;
        this.bid = bid;
        this.is_cold = is_cold;
        this.date = date;
        this.type = type;
        this.price = price;
    }

    /**
     * 获取
     * @return cid
     */
    public String getCid() {
        return cid;
    }

    /**
     * 设置
     * @param cid
     */
    public void setCid(String cid) {
        this.cid = cid;
    }

    /**
     * 获取
     * @return carNum
     */
    public String getCarNum() {
        return carNum;
    }

    /**
     * 设置
     * @param carNum
     */
    public void setCarNum(String carNum) {
        this.carNum = carNum;
    }

    /**
     * 获取
     * @return carImg
     */
    public String getCarImg() {
        return carImg;
    }

    /**
     * 设置
     * @param carImg
     */
    public void setCarImg(String carImg) {
        this.carImg = carImg;
    }

    /**
     * 获取
     * @return certificateImg
     */
    public String getCertificateImg() {
        return certificateImg;
    }

    /**
     * 设置
     * @param certificateImg
     */
    public void setCertificateImg(String certificateImg) {
        this.certificateImg = certificateImg;
    }

    /**
     * 获取
     * @return bid
     */
    public String getBid() {
        return bid;
    }

    /**
     * 设置
     * @param bid
     */
    public void setBid(String bid) {
        this.bid = bid;
    }

    /**
     * 获取
     * @return is_cold
     */
    public int getIs_cold() {
        return is_cold;
    }

    /**
     * 设置
     * @param is_cold
     */
    public void setIs_cold(int is_cold) {
        this.is_cold = is_cold;
    }

    /**
     * 获取
     * @return date
     */
    public Date getDate() {
        return date;
    }

    /**
     * 设置
     * @param date
     */
    public void setDate(Date date) {
        this.date = date;
    }

    /**
     * 获取
     * @return type
     */
    public String getType() {
        return type;
    }

    /**
     * 设置
     * @param type
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 获取
     * @return price
     */
    public double getPrice() {
        return price;
    }

    /**
     * 设置
     * @param price
     */
    public void setPrice(double price) {
        this.price = price;
    }

    public String toString() {
        return "Product{cid = " + cid + ", carNum = " + carNum + ", carImg = " + carImg + ", certificateImg = " + certificateImg + ", bid = " + bid + ", is_cold = " + is_cold + ", date = " + date + ", type = " + type + ", price = " + price + "}";
    }
}
