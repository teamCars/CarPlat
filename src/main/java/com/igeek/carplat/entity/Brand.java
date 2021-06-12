package com.igeek.carplat.entity;

/**
 * @Version 1.0
 * @Description TODO
 * @Author FangZhen
 * @Date 2021/6/8 22:25
 */
public class Brand {
    private String bid;
    private String bname;


    public Brand() {
    }

    public Brand(String bid, String bname) {
        this.bid = bid;
        this.bname = bname;
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
     * @return bname
     */
    public String getBname() {
        return bname;
    }

    /**
     * 设置
     * @param bname
     */
    public void setBname(String bname) {
        this.bname = bname;
    }

    public String toString() {
        return "Brand{bid = " + bid + ", bname = " + bname + "}";
    }
}
