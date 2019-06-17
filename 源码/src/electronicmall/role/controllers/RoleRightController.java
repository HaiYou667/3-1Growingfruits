package edu.etime.electronicmall.role.controllers;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.etime.electronicmall.dto.RightFunction;
import edu.etime.electronicmall.entities.RoleRights;
import edu.etime.electronicmall.entities.SysRoles;
import edu.etime.electronicmall.role.services.interfaces.RoleService;


@Controller
@RequestMapping("/sys/roleright")
public class RoleRightController {

	@Autowired
	private RoleService service;
	
	/**
	 * 初始化权限树
	 * @return
	 */
	@RequestMapping(value="/toright",method=RequestMethod.GET)
	public String toright(String id,Model model){
		SysRoles role=service.getrolebyid(id);
		List<RightFunction> rflist=service.initright(id);
		model.addAttribute("role", role);
		model.addAttribute("rflist", rflist);
		return "background/role/roleright";
	}
	/**
	 * 修改或者增加功能权限
	 * @param roleid
	 * @param funs
	 * @return
	 */
	@RequestMapping(value="/saverr",method=RequestMethod.POST)
	public String saverr(RoleRights roleright,String roleid,HttpServletRequest request){  
		String[] funs=request.getParameterValues("funids");
		//实体里面已经写了setRrid,所以此处不用在写
		int rtn=service.saverr(roleid, funs);
		if(rtn>0){
			return "background/role/list";
		}else{
			return "error";
		}
		
	}
}
