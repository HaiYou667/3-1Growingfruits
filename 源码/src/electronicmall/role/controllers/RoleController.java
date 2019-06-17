package edu.etime.electronicmall.role.controllers;

import java.util.List;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import edu.etime.electronicmall.entities.SysRoles;
import edu.etime.electronicmall.role.services.interfaces.RoleService;

@Controller
@RequestMapping("/background/role")
public class RoleController {
	@Autowired
    private RoleService rservice;
	/**
	 * 初始化增加页面
	 * @return
	 */
	 @RequestMapping(value="/add",method=RequestMethod.GET)
	private String add(){
		return "background/role/add";
	}
	 /**
	  * 增加角色
	  * @param role
	  * @return
	  */
	 @RequestMapping(value="/addrole",method=RequestMethod.POST)
	 private String addrole(SysRoles role){
         String roleid = UUID.randomUUID().toString();
		 role.setRoleid(roleid);
		 rservice.insert(role);
		return "background/role/add";		 
	 }
	 /**
	  * 查询角色
	  * @param role
	  * @param model
	  * @return
	  */
	 @RequestMapping("/list")
	 private String list(SysRoles role,Model model){
		List<SysRoles> list = rservice.select(role);
		model.addAttribute("list", list);
		model.addAttribute("role", role);
		return "background/role/list";
	 }
	 /**
	  * 初始化页面页面
	  * @param id
	  * @param model
	  * @return
	  */
	 @RequestMapping(value="/toedit",method=RequestMethod.GET)
	 private String toedit(String id,Model model){
		 SysRoles role = rservice.getrolebyid(id);
		 model.addAttribute("role", role);
		return "background/role/edit";	 
	 }
	 /**
	  * 修改角色信息
	  * @param role
	  * @return
	  */
	 @RequestMapping(value="/editrole",method=RequestMethod.POST)
	 private String editrole(SysRoles role){
	    rservice.updata(role);
		return "redirect:list";
	 }
}

