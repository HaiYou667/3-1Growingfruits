package edu.etime.electronicmall.pdttype.controllers;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.etime.electronicmall.entities.PdtType;
import edu.etime.electronicmall.pdttype.services.interfaces.PdttypeService;

@Controller
@RequestMapping("/background/pdttype")
public class PdttypeControllers {

	@Autowired
	private PdttypeService ptservice;
	
	/**
	 * 初始化商品类型增加页面
	 * @return
	 */
	@RequestMapping(value="/toadd",method=RequestMethod.GET)
	public String toadd(){
		return "/background/pdttype/add";
	}
	/**
	 * 商品类型增加页面
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String  add(PdtType pdtType,Model model){
		String ptid = UUID.randomUUID().toString();
		pdtType.setPtid(ptid);
		int rtn = ptservice.insert(pdtType);
		if(rtn>0){
			return "redirect:list";
			
		}else{
			String msg = "增加成功";
			model.addAttribute("msg",msg);
			return "/background/error";
		}	
	}
	/**
	 * 查询商品类型
	*/
	@RequestMapping(value="/list")
	public String list(PdtType pdtType,Model model){
		List<PdtType> list = ptservice.selectpdtype(pdtType);
		model.addAttribute("list",list);
		model.addAttribute("pdtType",pdtType);
		return "/background/pdttype/list";
	}
	/**
	 * 初始化修改页面
	 */
	@RequestMapping(value="/toedit",method=RequestMethod.GET)
	public String toedit(String id,Model model){
		PdtType pdtType = ptservice.selectByPrimaryKey(id);
		model.addAttribute("pdtType",pdtType);
		return "/background/pdttype/edit";	
	}
	/**
	 * 修改商品信息
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(PdtType pdtType,Model model){
		int rtn = ptservice.updateByPrimaryKeySelective(pdtType);
		if(rtn>0){
			return "redirect:list";
		}else{
			String msg = "修改失败";
			model.addAttribute("msg",msg);
			return "/background/error";
		}
	}
}
