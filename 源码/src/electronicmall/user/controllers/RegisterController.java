package edu.etime.electronicmall.user.controllers;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.etime.electronicmall.entities.Admin;
import edu.etime.electronicmall.entities.SysUsers;
import edu.etime.electronicmall.user.services.interfaces.UserService;

/**
 * 注册
 * @author 杨珍妮
 *
 */
@Controller
@RequestMapping("/foreground")
public class RegisterController {

	@Autowired
	private UserService service;
	/**
	 * 初始化注册页面
	 * @return
	 */
	@RequestMapping("/toregister")
	public String toinsert(){
		return "foreground/register";
		
	}
	
	/**
	 * 用户注册
	 * @param users
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String insert(SysUsers users){
		String userid = UUID.randomUUID().toString();
		users.setUserid(userid);
		int rtn = service.insert(users);
		if(rtn>0){
		   return "foreground/success";	
		}else{
			return "foreground/error";
		}
	}
	/**
	 * 增加时，检查用户名是否存在
	 * @param admin
	 * @return
	 */
	@RequestMapping(value="/check")
	public @ResponseBody Map<String, String> checkusername(SysUsers user){
		List<SysUsers> list= service.selectuser(user);
		Map<String, String> map=new HashMap<>();
		if(list.size()>0){
			map.put("flag","0");
			map.put("msg", "用户名已存在");
		}else{
			map.put("flag","1");
			map.put("msg", "用户名可用");
		}
		return map;
	}
}
