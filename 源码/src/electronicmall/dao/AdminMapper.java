package edu.etime.electronicmall.dao;

import java.util.List;

import edu.etime.electronicmall.entities.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(String adminid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String adminid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    Admin adminlogin(Admin admin);
}