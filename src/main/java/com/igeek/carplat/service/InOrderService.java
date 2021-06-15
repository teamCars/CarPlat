package com.igeek.carplat.service;

import com.igeek.carplat.dao.InOrderDao;
import com.igeek.carplat.entity.InOrder;
import com.igeek.carplat.vo.OrderVo;
import com.igeek.common.utils.DataSourceUtils;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * @version 1.0
 * @Description 订单业务逻辑层
 * @Author sunziwei
 * @Date 2021/6/14 14:31
 */
public class InOrderService {

    InOrderDao dao = new InOrderDao();
    //将订单和订单详情插入到数据库中
    public boolean insertInOrder(InOrder inOrder){
        //关闭事务的自动提交
        try {
            DataSourceUtils.startTransaction();
            //调用dao层插入数据
            int i = dao.InsertOrder(inOrder);
            int j = dao.InsertOrderItems(inOrder);
            //如果插入成功就返回true
            if(i>0 && j>0){
                return true;
            }else {
                return false;
            }

        } catch (SQLException e) {
            //出了异常就rollback
            try {
                DataSourceUtils.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
            return false;
        }finally {
            try {
                //把事务改成自动提交，关闭资源
                DataSourceUtils.commitAndRelease();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    //将订单地址更新到数据库
    public boolean updateAddress(String address,String iid){
        try {
            int i = dao.updateAddress(address, iid);
            return i>0?true:false;
        } catch (SQLException e) {
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

    //更新订单的状态
    public boolean updateState(String iid){
        try {
            int i = dao.updateState(iid);
            return i>0?true:false;
        } catch (SQLException e) {
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

    //查询我的订单，封装成vo对象
    public OrderVo findMyOrder(String uid,int pageNow){

        try {
            //查询总记录数
            Long count = (Long) dao.OrderItemsCount(uid);
            int myCount = Integer.parseInt(count.toString());

            //计算总页数
            int myPage = (int)(myCount%6.0 == 0?myCount/6.0:Math.ceil(myCount/6.0));
            //已知当前页

            //查询订单详情
            int begin = (pageNow-1)*6;
            List<Map<String, Object>> maps = dao.orderList(uid, begin);

            OrderVo vo = new OrderVo(myCount,myPage,pageNow,maps);
            return vo;

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                DataSourceUtils.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return null;
    }
}
