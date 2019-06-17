package edu.etime.electronicmall.user.services.interfaces;


import java.util.List;

import edu.etime.electronicmall.entities.SysUsers;

/**
 * 用户管理接口的服务层
 *
 */
public interface UserService {

    /**
     * 用户登录
     * @param user
     * @return
     */
  public SysUsers login(SysUsers user);
  /**
   * 用户注册
   * @param user
   * @return
   */
	public int insert(SysUsers user);
	/**
	   * 用户查询
	   * @param user
	   * @return
	   */
	public List<SysUsers> selectuser(SysUsers user);
	/**
	 * 查询用户信息通过id
	 * @param id
	 * @return
	 */
	public SysUsers selectbyid(String id);
	/**
	 * 修改个人信息
	 */
	public int update(SysUsers user);

}
