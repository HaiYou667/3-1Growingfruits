package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.PdtType;

public interface PdtTypeMapper {
    int deleteByPrimaryKey(String ptid);

    int insert(PdtType record);

    int insertSelective(PdtType record);

    PdtType selectByPrimaryKey(String ptid);

    int updateByPrimaryKeySelective(PdtType record);

    int updateByPrimaryKey(PdtType record);
}