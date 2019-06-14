package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.RevAddress;

public interface RevAddressMapper {
    int deleteByPrimaryKey(String rcvid);

    int insert(RevAddress record);

    int insertSelective(RevAddress record);

    RevAddress selectByPrimaryKey(String rcvid);

    int updateByPrimaryKeySelective(RevAddress record);

    int updateByPrimaryKey(RevAddress record);
}