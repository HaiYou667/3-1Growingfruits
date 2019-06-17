package edu.etime.electronicmall.user.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import edu.etime.electronicmall.dao.SysUsersMapper;
import edu.etime.electronicmall.entities.SysUsers;
import edu.etime.electronicmall.user.services.interfaces.UserService;
/**
 * 用户管理实现的服务层
 *
 */
@Service
public class UserServiceImpl implements UserService{
   
	@Autowired
	private SysUsersMapper dao;

	/**
	 * 用户登录
	 */
	@Override
	public SysUsers login(SysUsers user) {
		return dao.login(user);
	}
	
	/**
	 * 用户注册
	 */
	@Override
	public int insert(SysUsers user) {
	    return dao.insertSelective(user); 
    }
	/**
	 * 通过用户名查询用户
	 */

	@Override
	public List<SysUsers> selectuser(SysUsers user) {
		return dao.selectuser(user);
	}
	
	/**
	 * 查询用户信息通过id
	 */
	@Override
	public SysUsers selectbyid(String id) {
		return dao.selectByPrimaryKey(id);
	}
	/**
	 * 修改个人信息
	 */

	@Override
	public int update(SysUsers user) {
		return dao.updateByPrimaryKeySelective(user);
	}

}
