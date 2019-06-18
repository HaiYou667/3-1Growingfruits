package edu.etime.electronicmall.returns.controllers;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.etime.electronicmall.dto.OrderDetailDto;
import edu.etime.electronicmall.entities.Returns;
import edu.etime.electronicmall.returns.services.interfaces.ReturnsService;


@Controller
@RequestMapping("/sys/return")
public class ReturnController {

	@Autowired
	private ReturnsService service;
	
	/**
	 * 查询所有的订单
	 * @param orderdto
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String selectreturn(OrderDetailDto orderdto,Model model,HttpSession session) {
		//System.out.println(session.getAttribute("suser"));
		
		if(session.getAttribute("suser")!=null){
			List<OrderDetailDto> list=service.orderdetail(orderdto);
			model.addAttribute("list", list);
			return "foreground/return/list";
		}else{
			return "foreground/login";
		}
		
	}
	/**
	 * 初始化编辑提交退货的页面
	 * @param odid
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/toedit",method=RequestMethod.GET)
	public String toedit(String id,Model model){
		OrderDetailDto returndto=service.selectbyid(id);
		model.addAttribute("returndto", returndto);
		return "foreground/return/edit";
	}
	/**
	 * 初始化编辑，并将该页面插入到return表里面
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value="/editadd",method=RequestMethod.POST)
	public String editadd(Returns returns,Model model){
		String retid=UUID.randomUUID().toString();
		returns.setRetid(retid);
		int rtn=service.insertreturn(returns);
		if(rtn>0){
			String msg="您的退换货申请已提交，等待买家审核！";
			model.addAttribute("msg", msg);
			return "foreground/return/edit";
		}else{
			return "error";
		}
		
	}
	/**
	 * 查出状态
	 * @param orderdto
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/checkif",method=RequestMethod.GET)
	public String selectreturnstate(OrderDetailDto orderdto,Model model,HttpSession session) {
			List<OrderDetailDto> statelist=service.selectstate(orderdto);
			model.addAttribute("statelist", statelist);
			return "foreground/return/checkif";
		
	}
}
