package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.ShoopingCart;

public interface ShoopingCartMapper {
    int deleteByPrimaryKey(String scid);

    int insert(ShoopingCart record);

    int insertSelective(ShoopingCart record);

    ShoopingCart selectByPrimaryKey(String scid);

    int updateByPrimaryKeySelective(ShoopingCart record);

    int updateByPrimaryKey(ShoopingCart record);
}