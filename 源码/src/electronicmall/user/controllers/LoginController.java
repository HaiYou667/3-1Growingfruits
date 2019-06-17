package edu.etime.electronicmall.user.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.etime.electronicmall.dto.NewsDto;
import edu.etime.electronicmall.entities.News;
import edu.etime.electronicmall.entities.Productss;
import edu.etime.electronicmall.entities.SysUsers;
import edu.etime.electronicmall.news.services.interfaces.NewsService;
import edu.etime.electronicmall.product.services.interfaces.ProductService;
import edu.etime.electronicmall.user.services.interfaces.UserService;
import sun.print.PSStreamPrintService;

/**
 * 登录
 * @author 杨珍妮
 *
 */
@Controller
@RequestMapping("/foreground")
public class LoginController {
 
	@Autowired
	private UserService us;
	@Autowired
	private ProductService pservices;
	@Autowired
	private NewsService nservice;
	
	/**
	 * 进入店铺
	 * @return
	 */
	@RequestMapping(value="/home")
	public String home(Model model) {
		//查询10个推荐商品
		List<Productss> p3list=pservices.selectByState3();
		model.addAttribute("p3list", p3list);
		//查询5个普通商品
		List<Productss> p1list=pservices.selectByState1();
		model.addAttribute("p1list", p1list);		
		return "/foreground/electricmall";
		
	}
	/**
	 * 进入果真好商城
	 * @return
	 */
	@RequestMapping(value="/guozhenhao")
	public String guozhenhao(Model model) {
		//该页面新闻部分
		List<News> nlist=nservice.selectNews();		
		model.addAttribute("nlist", nlist);
		//查询该页面的前五条数据
		List<Productss> s2list = pservices.selectByState2();
		model.addAttribute("s2list", s2list);		
		return "/foreground/index";		
	}
	
	/**
	 * 初始化登录页面
	 * @return
	 */
	@RequestMapping(value="/tologin")
	public String tologin(){
		return "/foreground/login";
		
	}
	
	/**
	 * 登录
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(SysUsers user,Model model,HttpSession session){
		SysUsers suser = us.login(user);
	    if(suser==null){
	    	String msg = "登录失败";
	    	model.addAttribute(msg);
	    	return "redirect:tologin";
	    }else{
	    	session.setAttribute("suser", suser);
	    	return "redirect:guozhenhao";
	    }	
	}
}
