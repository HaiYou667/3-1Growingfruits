package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.Seller;

public interface SellerMapper {
    int deleteByPrimaryKey(String sid);

    int insert(Seller record);

    int insertSelective(Seller record);

    Seller selectByPrimaryKey(String sid);

    int updateByPrimaryKeySelective(Seller record);

    int updateByPrimaryKey(Seller record);
}