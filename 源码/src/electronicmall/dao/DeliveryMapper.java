package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.Delivery;

public interface DeliveryMapper {
    int deleteByPrimaryKey(String dlvid);

    int insert(Delivery record);

    int insertSelective(Delivery record);

    Delivery selectByPrimaryKey(String dlvid);

    int updateByPrimaryKeySelective(Delivery record);

    int updateByPrimaryKey(Delivery record);
}