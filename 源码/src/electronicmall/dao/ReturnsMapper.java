package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.Returns;

public interface ReturnsMapper {
    int deleteByPrimaryKey(String retid);

    int insert(Returns record);

    int insertSelective(Returns record);

    Returns selectByPrimaryKey(String retid);

    int updateByPrimaryKeySelective(Returns record);

    int updateByPrimaryKey(Returns record);
}