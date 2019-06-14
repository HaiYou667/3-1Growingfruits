package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.Comments;

public interface CommentsMapper {
    int deleteByPrimaryKey(String comid);

    int insert(Comments record);

    int insertSelective(Comments record);

    Comments selectByPrimaryKey(String comid);

    int updateByPrimaryKeySelective(Comments record);

    int updateByPrimaryKey(Comments record);
}