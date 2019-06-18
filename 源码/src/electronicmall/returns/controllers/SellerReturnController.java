package edu.etime.electronicmall.returns.controllers;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.etime.electronicmall.dto.ReturnDto;
import edu.etime.electronicmall.returns.services.interfaces.SellerReturnService;


@Controller
@RequestMapping("/sys/sellerreturn")
public class SellerReturnController {

	@Autowired
	private SellerReturnService service;
	
	/**
	 * 买家查询出所有的退货表里面的订单
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Model model){
		List<ReturnDto> list=service.listorder();
		model.addAttribute("list", list);
		return "background/returns/list";
	}
	
	/**
	 * 初始化商家编辑是否审核，审核是否通过的页面
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/toedit",method=RequestMethod.GET)
	public String toedit(String id,Model model){
		ReturnDto returndto=service.getreturnbyid(id);
		model.addAttribute("returndto", returndto);
		return "background/returns/edit";
	}
	/**
	 * 商家编辑页面，编辑退货表里面的订单审核是否通过
	 * @param returndto
	 * @return
	 */
	@RequestMapping(value="/edit")
	public String edit(ReturnDto returndto){
		int rtn=service.edit(returndto);
		if(rtn>0){
			return "redirect:list";
		}else{
			return "error";
		}
		
	}
}
