package edu.etime.electronicmall.shoppingcart.controllers;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.etime.electronicmall.delivery.services.interfaces.DeliveryService;
import edu.etime.electronicmall.entities.Delivery;
import edu.etime.electronicmall.entities.Payment;
import edu.etime.electronicmall.entities.Productss;
import edu.etime.electronicmall.entities.ShoopingCart;
import edu.etime.electronicmall.payment.services.interfaces.PaymentService;
import edu.etime.electronicmall.product.services.interfaces.ProductService;
import edu.etime.electronicmall.shoppingcart.services.interfaces.ShoppingCartService;

/**
 * 购物车
 * @author 郭佳
 *
 */
@Controller
@RequestMapping("/foreground/shoppingcart")
public class ShoppingCartController {

	@Autowired
	private ProductService pservice;
	@Autowired
	private ShoppingCartService scservice;
	@Autowired
    private DeliveryService dservice;
	@Autowired
	private PaymentService payservice;
	
	
	/**
	 * 添加商品到购物车
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/toadd",method=RequestMethod.GET)
	public String enter(String id,Model model,ShoopingCart sc,HttpSession session){
		
		if(session.getAttribute("suser")!=null){//判断用户是否登录
			Productss product=pservice.selectByid(id);//根据id查询一条商品信息
			//model.addAttribute("product", product);
			
			ShoopingCart spct=scservice.selectByPdtid(id);//根据商品id查询购物车信息
			
			//判断该商品是否已存在
			if(spct!=null){//说明商品已存在
				
				String msg="您已添加过该商品！";
				model.addAttribute("msg", msg);
				Productss pro=pservice.selectByid(id);//再次根据商品id查询一条商品信息
				model.addAttribute("pro", pro);
				List<Productss> recpdt=pservice.selectSameTypePdt(id);//根据商品名称查询商品信息
				model.addAttribute("recpdt", recpdt);
				return "foreground/productdetail";
			}else{
			
				String scid=UUID.randomUUID().toString();
				sc.setScid(scid);
				sc.setPdtid(product.getPdtid());//将商品信息插入到购物车
				sc.setPdtname(product.getPdtname());
				sc.setPdtpicture(product.getPdtpicture());
				sc.setPdtnumber(product.getPdtnumber());
				sc.setPdtsprice(product.getPdtsprice());
				
				int rtn=scservice.add(sc);//插入一条购物车信息
				if(rtn>0){
					String msg="成功加入到购物车！";
					model.addAttribute("msg", msg);
					Productss pro=pservice.selectByid(id);//在根据商品id查询出一条商品信息
					model.addAttribute("pro", pro);
					List<Productss> recpdt=pservice.selectSameTypePdt(id);//根据商品名称查询商品信息
					model.addAttribute("recpdt", recpdt);
					return "foreground/productdetail";
				}else{
					return "foreground/error";
				}
			}
		}else{
			return "foreground/login";
		}
	}
	
	/**
	 * 查询购物车中所有商品信息
	 * @return
	 */
	@RequestMapping(value="/enter",method=RequestMethod.GET)
	public String enter(Model model,HttpSession session){
		
		if(session.getAttribute("suser")!=null){//判断用户是否登录
			
			List<ShoopingCart> sclist=scservice.selectAllSCInfo();//查询购物车中所有商品信息
			model.addAttribute("sclist", sclist);
			
			List<Delivery> dlvlist = dservice.select(null);//查询配送方式
			model.addAttribute("dlvlist", dlvlist);
			
			List<Payment> paylist = payservice.select(null);//查询支付方式
			model.addAttribute("paylist", paylist);
			  
			return "foreground/shoppingcart/shopping";
		}else{
			
			return "foreground/login";
		}
		
	}
	
	
	
}
