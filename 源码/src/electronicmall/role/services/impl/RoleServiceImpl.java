package edu.etime.electronicmall.role.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import edu.etime.electronicmall.dao.SysRoleMapper;
import edu.etime.electronicmall.entities.SysRole;
import edu.etime.electronicmall.role.services.interfaces.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
   
	@Autowired
	private SysRoleMapper dao; 
	
	/**
	 * 增加角色
	 */
	@Override
	public int insert(SysRole role) {
		return dao.insert(role);
	}

}
