package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.NewsType;

public interface NewsTypeMapper {
    int deleteByPrimaryKey(String nstid);

    int insert(NewsType record);

    int insertSelective(NewsType record);

    NewsType selectByPrimaryKey(String nstid);

    int updateByPrimaryKeySelective(NewsType record);

    int updateByPrimaryKey(NewsType record);
}