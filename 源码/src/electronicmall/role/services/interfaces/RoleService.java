package edu.etime.electronicmall.role.services.interfaces;


import java.util.List;
import edu.etime.electronicmall.dto.RightFunction;
import edu.etime.electronicmall.entities.SysRoles;
/**
 * 角色管理服务层
 *
 */
public interface RoleService {
	 /**
     * 增加角色
     * @param role
     * @return
     */
	public int insert(SysRoles role);
	/**
	 * 查询角色
>>>>>>> .r184
	 * @param role
	 * @return
	 */
	public List<SysRoles> select(SysRoles role);
	/**
	 * 根据角色id角色查询信息
	 * @param role
	 * @return
	 */
	public SysRoles getrolebyid(String id);
	/**
	 * 修改角色信息
	 * @param role
	 * @return
	 */
	public int updata(SysRoles role);
	
	/**
	 * 初始化功能树（显示已有功能项为选中标志）
	 * @param roleid
	 * @return
	 */
	public List<RightFunction> initright(String roleid);
	
	/**
	 * 保存角色权限
	 * @param id
	 * @param funs
	 * @return
	 */
	public int saverr(String roleid, String[] funs);
}
