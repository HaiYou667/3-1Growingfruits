package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.OrderDetail;

public interface OrderDetailMapper {
    int deleteByPrimaryKey(String odid);

    int insert(OrderDetail record);

    int insertSelective(OrderDetail record);

    OrderDetail selectByPrimaryKey(String odid);

    int updateByPrimaryKeySelective(OrderDetail record);

    int updateByPrimaryKey(OrderDetail record);
}