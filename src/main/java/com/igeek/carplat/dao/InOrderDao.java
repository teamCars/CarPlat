package com.igeek.carplat.dao;

import com.igeek.carplat.entity.InOrder;
import com.igeek.carplat.entity.InOrderItems;
import com.igeek.common.utils.DataSourceUtils;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * @version 1.0
 * @Description 订单类的数据操作层
 * @Author sunziwei
 * @Date 2021/6/14 14:29
 */
public class InOrderDao extends BaseDao<InOrder> {

    //将订单对象插入到数据库中
    public int InsertOrder(InOrder inOrder) throws SQLException {
        String sql = "insert into inorder value(?,?,?,?,?,?)";
        int i = this.updateInfo(DataSourceUtils.getConnection(), sql, inOrder.getIid(), inOrder.getUser().getUid(),
                inOrder.getTotal(), inOrder.getIdate(), inOrder.getState(), inOrder.getAddress());
        return i;
    }

    //将订单详情对象插入到数据库中
    public int InsertOrderItems(InOrder inOrder) throws SQLException {
        int flag = 1;
        String sql = "insert into inorderitem value(?,?,?,?,?)";
        List<InOrderItems> inOrderItems = inOrder.getInOrderItems();
        for (InOrderItems inOrderItem : inOrderItems) {
            int i = this.updateInfo(DataSourceUtils.getConnection(), sql, inOrderItem.getItemId(),
                    inOrderItem.getDayNum(), inOrderItem.getSubTotal(), inOrderItem.getProduct().getCid(),
                    inOrderItem.getInOrder().getIid());
            if(i<=0){
                flag = 0;
            }
        }
        return flag;
    }

    //将收货地址更新到数据库
    public int updateAddress(String address,String iid) throws SQLException {
        String sql = "update inorder set address=? where iid = ?";
        int i = this.updateInfo(DataSourceUtils.getConnection(), sql, address, iid);
        return i;
    }

    //更新数据库中订单的状态
    public int updateState(String iid) throws SQLException {
        String sql = "update inorder set state = 1 where iid = ?";
        int i = this.updateInfo(DataSourceUtils.getConnection(), sql, iid);
        return i;
    }

    //多表联合查询，查询出所有需要的内容
    public List<Map<String,Object>> orderList(String uid,int begin) throws SQLException {
        String sql = "select inorder.iid,car.carImg,car.type,inorderitem.daynum,car.price,inorderitem.subtotal from inorder,inorderitem,car where inorder.iid = inorderitem.iid and inorderitem.cid = car.cid and inorder.uid = ? ORDER BY inorder.idate limit ?,6";
        List<Map<String, Object>> mapList = this.getMap(DataSourceUtils.getConnection(), sql, uid,begin);
        return mapList;
    }

    //所有的订单详情数
    public Object OrderItemsCount(String uid) throws SQLException {
        String sql = "select count(*) from inorder,inorderitem,car where inorder.iid = inorderitem.iid and inorderitem.cid = car.cid and inorder.uid = ?";
        Object counts = this.getSingleValue(DataSourceUtils.getConnection(), sql, uid);
        return counts;
    }
}
