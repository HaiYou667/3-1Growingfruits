package edu.etime.electronicmall.role.services.interfaces;

import edu.etime.electronicmall.entities.SysRole;
/**
 * 角色管理服务层
 * @author yxs
 *
 */
public interface RoleService {
	 /**
     * 增加角色
     * @param role
     * @return
     */
	public int insert(SysRole role);
}
