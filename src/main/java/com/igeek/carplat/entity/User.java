package com.igeek.carplat.entity;

/**
 * @version 1.0
 * @Description 用户实体类
 * @Author sunziwei
 * @Date 2021/6/6 14:44
 */
public class User {
    //用户id
    private String Uid;
    //用户名
    private String username;
    //用户密码
    private String pwd;
    //用户性别
    private String sex;
    //用户年龄
    private Integer age;
    //用户电话
    private String phone;
    //用户地址
    private String address;
    //用户邮箱
    private String email;
    //用户身份证号
    private String personID;
    //用户驾驶证
    private String driverImg;
    //用户激活码
    private String code;
    //用户真实姓名
    private String name;
    //当前账户状态
    private Integer state;


    public User() {
    }

    public User(String Uid, String username, String pwd, String sex, Integer age, String phone, String address, String email, String personID, String driverImg, String code, String name, Integer state) {
        this.Uid = Uid;
        this.username = username;
        this.pwd = pwd;
        this.sex = sex;
        this.age = age;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.personID = personID;
        this.driverImg = driverImg;
        this.code = code;
        this.name = name;
        this.state = state;
    }

    /**
     * 获取
     * @return Uid
     */
    public String getUid() {
        return Uid;
    }

    /**
     * 设置
     * @param Uid
     */
    public void setUid(String Uid) {
        this.Uid = Uid;
    }

    /**
     * 获取
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取
     * @return pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * 设置
     * @param pwd
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    /**
     * 获取
     * @return sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * 设置
     * @param sex
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * 获取
     * @return age
     */
    public Integer getAge() {
        return age;
    }

    /**
     * 设置
     * @param age
     */
    public void setAge(Integer age) {
        this.age = age;
    }

    /**
     * 获取
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
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
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取
     * @return personID
     */
    public String getPersonID() {
        return personID;
    }

    /**
     * 设置
     * @param personID
     */
    public void setPersonID(String personID) {
        this.personID = personID;
    }

    /**
     * 获取
     * @return driverImg
     */
    public String getDriverImg() {
        return driverImg;
    }

    /**
     * 设置
     * @param driverImg
     */
    public void setDriverImg(String driverImg) {
        this.driverImg = driverImg;
    }

    /**
     * 获取
     * @return code
     */
    public String getCode() {
        return code;
    }

    /**
     * 设置
     * @param code
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return state
     */
    public Integer getState() {
        return state;
    }

    /**
     * 设置
     * @param state
     */
    public void setState(Integer state) {
        this.state = state;
    }

    public String toString() {
        return "User{Uid = " + Uid + ", username = " + username + ", pwd = " + pwd + ", sex = " + sex + ", age = " + age + ", phone = " + phone + ", address = " + address + ", email = " + email + ", personID = " + personID + ", driverImg = " + driverImg + ", code = " + code + ", name = " + name + ", state = " + state + "}";
    }
}
