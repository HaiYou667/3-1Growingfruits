package edu.etime.electronicmall.role.controllers;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import edu.etime.electronicmall.entities.SysRole;
import edu.etime.electronicmall.role.services.interfaces.RoleService;

@Controller
@RequestMapping("/background/role")
public class RoleController {
	@Autowired
    private RoleService rservice;
	
	 @RequestMapping(value="/add",method=RequestMethod.GET)
	private String add(){
		return "background/role/add";
	}
	 @RequestMapping(value="/addrole",method=RequestMethod.POST)
	 private String addrole(SysRole role){
         String roleid = UUID.randomUUID().toString();
		 role.setRoleid(roleid);
		 int rtn=rservice.insert(role);
		return "background/role/add";		 
	 }
}
