package edu.etime.electronicmall.admin.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import edu.etime.electronicmall.admin.services.interfaces.AdminService;
import edu.etime.electronicmall.entities.Admin;

@Controller
@RequestMapping("/background/admin")
public class AdminControllers {
        
	@Autowired
	private AdminService aservice;
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(){
		return "background/admin/add";
	}
	@RequestMapping(value="/addadmin",method=RequestMethod.POST)
	public String addadmin(Admin admin){
		int rtn = aservice.insert(admin);
		return "background/admin/add";	
	}
	
}
