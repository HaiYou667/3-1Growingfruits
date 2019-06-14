package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.News;

public interface NewsMapper {
    int deleteByPrimaryKey(String newsid);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(String newsid);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
}