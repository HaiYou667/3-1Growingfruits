package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.Orders;

public interface OrdersMapper {
    int deleteByPrimaryKey(Long orderId);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(Long orderId);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);
}