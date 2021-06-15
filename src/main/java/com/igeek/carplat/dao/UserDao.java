package com.igeek.carplat.dao;

import com.igeek.carplat.entity.User;
import com.igeek.common.utils.DataSourceUtils;

import java.util.List;

/**
 * @version 1.0
 * @Description TODO
 * @Author sunziwei
 * @Date 2021/6/6 18:54
 */
public class UserDao extends BaseDao<User> implements IDao<User> {
    @Override
    public User selectOne(Object... params) throws Exception {
        String sql = "select * from user where username = ? and pwd = ?";
        User user = this.getBean(DataSourceUtils.getConnection(), sql, User.class, params);
        return user;
    }

    //根据验证码获得用户对象
    public User findOne(String code) throws Exception {
        String sql = "select * from user where code = ?";
        User user = this.getBean(DataSourceUtils.getConnection(), sql, User.class, code);
        return user;
    }

    @Override
    public List<User> selectAll(Object... params) throws Exception {
        return null;
    }

    @Override
    public Object selectValue(Object... params) throws Exception {
        String sql = "select count(*) from user where phone = ?";
        Object value = this.getSingleValue(DataSourceUtils.getConnection(), sql, params);
        return value;
    }

    public Object findValueByUserName(Object... params) throws Exception {
        String sql = "select count(*) from user where username = ?";
        Object value = this.getSingleValue(DataSourceUtils.getConnection(), sql, params);
        return value;
    }

    @Override
    public int update(Object... params) throws Exception {
        String sql = "update user set state = 1 where code = ?";
        int i = this.updateInfo(DataSourceUtils.getConnection(), sql, params);
        return i;
    }

    @Override
    public int delete(String id) throws Exception {
        return 0;
    }

    @Override
    public int insert(User user) throws Exception {
        String sql = "insert into user values(?,?,?,?,?,?,?,?,?,?,?,?,0)";
        int i = this.updateInfo(DataSourceUtils.getConnection(), sql, user.getUid(), user.getUsername(), user.getPwd(), user.getSex(),user.getAge(),
                user.getPhone(), user.getAddress(), user.getEmail(), user.getPersonID(), user.getDriverImg(), user.getCode(),user.getName());
        return i;
    }
}
