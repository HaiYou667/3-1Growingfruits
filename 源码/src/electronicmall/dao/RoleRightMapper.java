package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.RoleRight;

public interface RoleRightMapper {
    int deleteByPrimaryKey(String rrid);

    int insert(RoleRight record);

    int insertSelective(RoleRight record);

    RoleRight selectByPrimaryKey(String rrid);

    int updateByPrimaryKeySelective(RoleRight record);

    int updateByPrimaryKey(RoleRight record);
}