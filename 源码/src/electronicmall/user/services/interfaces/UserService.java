package edu.etime.electronicmall.user.services.interfaces;

import edu.etime.electronicmall.entities.SysUser;

/**
 * 用户管理服务层
 * @author yxs
 *
 */
public interface UserService {
        /**
         * 增加用户
         * @param user
         * @return
         */
	public int insert(SysUser user);
}
