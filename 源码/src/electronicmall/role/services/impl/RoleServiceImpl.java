package edu.etime.electronicmall.role.services.impl;


import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.dao.RoleRightsMapper;
import edu.etime.electronicmall.dao.SysFunctionsMapper;
import edu.etime.electronicmall.dao.SysRolesMapper;
import edu.etime.electronicmall.dto.Function;
import edu.etime.electronicmall.dto.RightFunction;
import edu.etime.electronicmall.entities.Admin;
import edu.etime.electronicmall.entities.RoleRights;
import edu.etime.electronicmall.entities.SysRoles;
import edu.etime.electronicmall.entities.SysUsers;
import edu.etime.electronicmall.role.services.interfaces.RoleService;


@Service
public class RoleServiceImpl implements RoleService {
   
	@Autowired
	private SysRolesMapper dao; 
	@Autowired
	private RoleRightsMapper rightdao;
	@Autowired
	private SysFunctionsMapper fdao;
	/**
	 * 增加角色
	 */
	@Override
	public int insert(SysRoles role) {
		return dao.insert(role);
	}
	@Override
	public List<SysRoles> select(SysRoles role) {
		return dao.select(role);
	}
    /**
     * 根据角色id查询角色信息
     */
	@Override
	public SysRoles getrolebyid(String id) {
		return dao.selectByPrimaryKey(id);
	}
   /**
    * 修改角色信息
    */
	@Override
	public int updata(SysRoles role) {
		return dao.updateByPrimaryKeySelective(role);
	}
	/**
	 * 初始化权限树
	 */
	@Override
	public List<RightFunction> initright(String roleid) {
		//FunctionDao fdao=new FunctionDaoImpl();
		List<Function> all=fdao.selectfunctionlist();//获取所有的功能列表
		Admin admin=new Admin();
        admin.setRoleid(roleid);
		List<Function> hasfun=fdao.selectfunctionbyroleid(admin);//根据上面获取到的roleid获取该用户所拥有的功能.funlist(admin);
		
		List<RightFunction> rflist=new ArrayList<>();//用于存放某个用户所有的已拥有的功能
		
		for(Function fun:all){
			RightFunction rf=new RightFunction();
			rf.setFunid(fun.getFunid());
			rf.setFunname(fun.getFunname());
			rf.setFunpid(fun.getFunpid());
			rf.setFunpname(fun.getFunpname());
			rf.setFunstate(fun.getFunstate());
			rf.setFunurl(fun.getFunurl());   
			
			rf.setChecked(0);
			for(Function f:hasfun){
				if(f.getFunid().equals(rf.getFunid())){
					rf.setChecked(1);
					break;
				}
			}
			rflist.add(rf);
		}
		
		return rflist;
	}
   /**
     * 保存权限
    */
	@Override
	public int saverr(String roleid, String[] funs) {
		//先将所有的权限删除
		int rtn=rightdao.deleteByRoleid(roleid);
       //再将所选择的权限插入
		if(rtn>0){
			for(int i=0;i<funs.length;i++){
				
				String funid=funs[i];
				String  rrid=UUID.randomUUID().toString();
				
				RoleRights roleright=new RoleRights();
				
				roleright.setFunid(funid);
				roleright.setRrid(rrid);
				roleright.setRoleid(roleid);
				rightdao.insertSelective(roleright);
			}
		}
		return 1;
	}

}
