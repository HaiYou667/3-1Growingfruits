package edu.etime.electronicmall.admin.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.etime.electronicmall.admin.services.interfaces.AdminService;
import edu.etime.electronicmall.entities.Admin;

@Controller
@RequestMapping("/background")
public class AdlogController {

	@Autowired
	private AdminService aservice;

	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String login(){
		return "background/adminlogin";
	}
	@RequestMapping(value="/adminlogin",method=RequestMethod.POST)
	public String  addminlogin(Admin admin,HttpServletRequest request,Model model){
		Admin ad = aservice.adminlogin(admin);
		request.getSession().setAttribute("ad",ad);
		if(ad==null){
			String msg="登录失败";
			return "";
		}else{
			return "background/index";
		}
	}
}
