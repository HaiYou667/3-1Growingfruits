package edu.etime.electronicmall.user.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.dao.SysUserMapper;
import edu.etime.electronicmall.entities.SysUser;
import edu.etime.electronicmall.user.services.interfaces.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private SysUserMapper dao;
	 
	@Override
	public int insert(SysUser user) {
	    return dao.insert(user); 
	}

}
