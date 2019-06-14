package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.Product;

public interface ProductMapper {
    int deleteByPrimaryKey(String proid);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(String proid);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
}