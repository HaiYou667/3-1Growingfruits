package edu.etime.electronicmall.user.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.etime.electronicmall.entities.SysUser;
import edu.etime.electronicmall.user.services.interfaces.UserService;

@Controller
@RequestMapping("/foreground/user")
public class UserController {
	
	@Autowired
	private UserService uservice;
     /**
      * 初始化增加页面
      * @return
      */
	@RequestMapping(value="/toadd",method=RequestMethod.GET)
	public String add(){
		return "/foreground/user/add";
	}
	/**
	 * 增加用户
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String adduser(SysUser user){
		int rtn = uservice.insert(user);	
		return "/foreground/user/toadd";
		
	}
}
