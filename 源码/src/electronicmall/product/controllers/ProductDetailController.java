package edu.etime.electronicmall.product.controllers;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.etime.electronicmall.comment.services.interfaces.CommentService;
import edu.etime.electronicmall.entities.Comments;
import edu.etime.electronicmall.entities.Productss;
import edu.etime.electronicmall.product.services.interfaces.ProductService;

/**
 * 商品详情页面
 * @author 郭佳
 *
 */
@Controller
@RequestMapping("/product")
public class ProductDetailController {

	@Autowired
	private ProductService pservices;
	@Autowired
	private CommentService comservices;
	
	@RequestMapping(value="/lookprodetail",method=RequestMethod.GET)
	public String lookprodetail(String id,Model model){
		Productss pro=pservices.selectByid(id);//根据商品id查询一条商品信息
		model.addAttribute("pro", pro);
		///////////
		
		
		List<Productss> recpdt=pservices.selectSameTypePdt(id);//根据商品名称查询商品信息
		model.addAttribute("recpdt", recpdt);
		///////////
		return "/foreground/productdetail";
	}
//	/**
//	 * 增加商品评价
//	 * @param pd
//	 * @param model
//	 * @return
//	 */
//	@RequestMapping(value="/lookprodetail",method=RequestMethod.GET)
//	public String add(Comments pd,Model model){
//	   String pdtid = UUID.randomUUID().toString();
//	   pd.setPdtid(pdtid);
//	   int rtn = pservices.addcomment(pd);
//	   if(rtn>0){
//		   return "/foreground/productdetail";
//	   }else{
//		   String msg="增加评论失败！";
//		   model.addAttribute("msg", msg);
//		   return "/foreground/error";
//	   }
//	}
//	
	/**
	 * 
	 * @param productss
	 * @param model
	 * @param pd
	 * @return
	 */
	@RequestMapping(value="/suibian",method=RequestMethod.POST)
	public String add(Productss productss,Model model, Comments pd){
		String pdtid = UUID.randomUUID().toString();
		productss.setPdtid(pdtid);
		int rtn = pservices.addcomment(pd);
		 if(rtn>0){
			   return "/foreground/productdetail";
		   }else{
			   String msg="增加评论失败！";
			   model.addAttribute("msg", msg);
			   return "/foreground/error";
		   }
	}
	@RequestMapping(value="/toadd",method=RequestMethod.GET)
	public String add1(){
		return "/foreground/suibian";
		
	}
}
