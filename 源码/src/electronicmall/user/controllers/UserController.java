package edu.etime.electronicmall.user.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import edu.etime.electronicmall.common.FileUpLoad;
import edu.etime.electronicmall.entities.SysUsers;
import edu.etime.electronicmall.user.services.interfaces.UserService;

@Controller
@RequestMapping("/foreground/user")
public class UserController {
	@Autowired
	private UserService service;
	/**
	 * 查询页面
	 */
	@RequestMapping(value="/list")
	public String list(SysUsers user,Model model){
		List<SysUsers> list=service.selectuser(user);
		model.addAttribute("list",list);
		model.addAttribute("user",user);
		return "/foreground/user/list";
	}
	/**
	 * 初始化页面
	 */
	@RequestMapping(value="/toedit",method=RequestMethod.GET)
	public String toedit(String id,Model model){
		SysUsers users=service.selectbyid(id);
		model.addAttribute("user",users);
		return "/foreground/user/edit";
	}
	/**
	 * 头像初始化页面
	 */
	@RequestMapping(value="/toedit1",method=RequestMethod.GET)
	public String toedit1(String id,Model model){
		SysUsers users=service.selectbyid(id);
		model.addAttribute("user",users);
		return "/foreground/user/headporttrait";
	}
	/**
	 * 个人资料修改页面
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(SysUsers user,Model model,MultipartFile file,HttpSession Session) throws IllegalStateException, IOException{
		//判断是否上传文件
		if(!file.isEmpty()){
			String filepath = FileUpLoad.fileupload(file, Session);
			user.setHeadporttrait("/images/"+filepath);
		}
		int rtn = service.update(user);
		if(rtn>0){
			String msg = "修改信息成功";
			return "msg";
		}else{
			String msg = "修改失败";
			model.addAttribute("msg",msg);
			return "/background/error";
		}
	}
}
