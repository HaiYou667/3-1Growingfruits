package edu.etime.electronicmall.seller.controllers;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.etime.electronicmall.entities.Seller;
import edu.etime.electronicmall.seller.services.interfaces.SellerServices;

/**
 *商家管理控制层
 * @author 杨珍妮
 *
 */
@Controller
@RequestMapping("/background/seller")
public class SellerController {
	
	@Autowired
	private SellerServices service;
	/**
	 * 初始化增加商家页面
	 * @return
	 */
	@RequestMapping(value="/toadd",method=RequestMethod.GET)
	public String toadd(){
		return "/background/seller/add";
	}
	/**
	 * 增加商家
	 * @param seller
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
    public String add(Seller seller,Model model){
    	String sid = UUID.randomUUID().toString();
    	seller.setSid(sid);
    	int rtn = service.insert(seller);
    	if(rtn>0){
			return "redirect:select";
		}else{
			String msg = "添加失败";
			model.addAttribute("msg",msg);
			return "/background/error";
		}
    }
	/**
	 * 查询商家列表
	 * @param seller
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/select")
	public String select(Seller seller,Model model){
		List<Seller> list = service.select(seller);
		model.addAttribute("list", list);
		model.addAttribute("seller", seller);
		return "background/seller/list";
		
	}
	/**
	 * 初始化修改页面
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/toedit",method=RequestMethod.GET)
	public String toedit(String id,Model model){
		Seller list = service.getbyid(id);
		model.addAttribute("list", list);
		//model.addAttribute("seller", seller);
		return "background/seller/edit";
		
	}
	/**
	 * 修改商家
	 * @param seller
	 * @return
	 */
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String edit(Seller seller){
		service.update(seller);
		return "redirect:select";
		
	}
}
