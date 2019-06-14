package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.Barter;

public interface BarterMapper {
    int deleteByPrimaryKey(String barid);

    int insert(Barter record);

    int insertSelective(Barter record);

    Barter selectByPrimaryKey(String barid);

    int updateByPrimaryKeySelective(Barter record);

    int updateByPrimaryKey(Barter record);
}