package edu.etime.electronicmall.admin.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.admin.services.interfaces.AdminService;
import edu.etime.electronicmall.dao.AdminMapper;
import edu.etime.electronicmall.entities.Admin;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
	private AdminMapper dao;
	/**
	 * 增加管理员
	 */
	public int insert(Admin admin) {
		return dao.insert(admin);
	}
	@Override
	public Admin adminlogin(Admin admin) {
		return dao.adminlogin(admin);
	}
}
