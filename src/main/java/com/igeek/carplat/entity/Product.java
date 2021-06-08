package com.igeek.carplat.entity;

import java.util.Date;

/**
 * @Version 1.0
 * @Description TODO
 * @Author FangZhen
 * @Date 2021/6/8 19:21
 */
public class Product {

    private String Cid;    // 汽车id
    private String CarNum;   //车牌号码
    private String CarImg;   //汽车照片
    private String CertificateImg;   //行驶证照片
    private String Bid;   //汽车品牌id
    private int is_cold;   //是否冷门产品
    private Date date;     //时间


    public Product() {
    }

    public Product(String Cid, String CarNum, String CarImg, String CertificateImg, String Bid, int is_cold, Date date) {
        this.Cid = Cid;
        this.CarNum = CarNum;
        this.CarImg = CarImg;
        this.CertificateImg = CertificateImg;
        this.Bid = Bid;
        this.is_cold = is_cold;
        this.date = date;
    }

    /**
     * 获取
     * @return Cid
     */
    public String getCid() {
        return Cid;
    }

    /**
     * 设置
     * @param Cid
     */
    public void setCid(String Cid) {
        this.Cid = Cid;
    }

    /**
     * 获取
     * @return CarNum
     */
    public String getCarNum() {
        return CarNum;
    }

    /**
     * 设置
     * @param CarNum
     */
    public void setCarNum(String CarNum) {
        this.CarNum = CarNum;
    }

    /**
     * 获取
     * @return CarImg
     */
    public String getCarImg() {
        return CarImg;
    }

    /**
     * 设置
     * @param CarImg
     */
    public void setCarImg(String CarImg) {
        this.CarImg = CarImg;
    }

    /**
     * 获取
     * @return CertificateImg
     */
    public String getCertificateImg() {
        return CertificateImg;
    }

    /**
     * 设置
     * @param CertificateImg
     */
    public void setCertificateImg(String CertificateImg) {
        this.CertificateImg = CertificateImg;
    }

    /**
     * 获取
     * @return Bid
     */
    public String getBid() {
        return Bid;
    }

    /**
     * 设置
     * @param Bid
     */
    public void setBid(String Bid) {
        this.Bid = Bid;
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

    public String toString() {
        return "Product{Cid = " + Cid + ", CarNum = " + CarNum + ", CarImg = " + CarImg + ", CertificateImg = " + CertificateImg + ", Bid = " + Bid + ", is_cold = " + is_cold + ", date = " + date + "}";
    }
}
