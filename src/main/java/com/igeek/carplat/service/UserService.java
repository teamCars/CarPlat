package com.igeek.carplat.service;

import com.igeek.carplat.dao.IDao;
import com.igeek.carplat.dao.UserDao;
import com.igeek.carplat.entity.User;
import com.igeek.common.utils.DataSourceUtils;

import java.sql.SQLException;

/**
 * @version 1.0
 * @Description TODO
 * @Author sunziwei
 * @Date 2021/6/6 18:55
 */
public class UserService {
    private IDao<User> dao = new UserDao();

    /**
     * @methodName register
     * @Description 注册
     * @param  user
     * @return boolean
     */
    public boolean register(User user){
        try {
            int i = dao.insert(user);
            return i>0?true:false;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    /**
     * @methodName active
     * @Description 激活功能
     * @param  code
     * @return boolean
     */
    public boolean active(String code){
        try {
            int i = dao.update(code);
            return i>0?true:false;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    /**
     * @methodName validate
     * @Description 校验手机号码是否存在
     * @param  phone
     * @return boolean
     */
    public boolean validate(String phone){
        try {
            Long value = (Long) dao.selectValue(phone);
            return value>0?false:true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    /**
     * @methodName login
     * @Description 登录
     * @param  username
     * @param  pwd
     * @return com.igeek.carplat.entity.User
     */
    public User login(String username,String pwd){
        User user = null;
        try {
             user = dao.selectOne(username, pwd);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return user;
    }

    /**
     * @methodName findUser
     * @Description 根据验证码查询用户，实现在激活后将用户名和密码存进cookie
     * @param  code
     * @return com.igeek.carplat.entity.User
     */
    public User findUser(String code){
        User user = null;
        try {
            if(dao instanceof UserDao){
                user = ((UserDao) dao).findOne(code);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return user;
    }
}
