package edu.etime.electronicmall.order.controllers;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import edu.etime.electronicmall.delivery.services.interfaces.DeliveryService;
import edu.etime.electronicmall.dto.OrderDetailDto;
import edu.etime.electronicmall.entities.Delivery;
import edu.etime.electronicmall.entities.Ord;
import edu.etime.electronicmall.entities.OrderDetail;
import edu.etime.electronicmall.entities.Payment;
import edu.etime.electronicmall.entities.Productss;
import edu.etime.electronicmall.entities.ShoopingCart;
import edu.etime.electronicmall.order.services.interfaces.OrderService;
import edu.etime.electronicmall.orderdetail.services.interfaces.OrderDetailService;
import edu.etime.electronicmall.payment.services.interfaces.PaymentService;
import edu.etime.electronicmall.product.services.interfaces.ProductService;
import edu.etime.electronicmall.returns.services.interfaces.ReturnsService;
import edu.etime.electronicmall.shoppingcart.services.interfaces.ShoppingCartService;

/**
 * 订单的控制层 
 * @author 郭佳
 *
 */
@Controller
@RequestMapping("/foreground")
public class OrderController {
 
	@Autowired
    private DeliveryService dservice;
	@Autowired
	private PaymentService payservice;
	@Autowired
	private ShoppingCartService scservice;
	@Autowired
	private OrderService oservice;
	@Autowired
	private ProductService proservice;
	@Autowired
	private OrderDetailService odservice;
	@Autowired
	private ReturnsService service;
	
	
	
	/**测试进入订单确认页面的样式
	@RequestMapping(value="/toorder",method=RequestMethod.GET)
	public String toorder(String id,Model model){
		List<Delivery> dlvlist = dservice.select(null);//查询配送方式
		model.addAttribute("dlvlist", dlvlist);
		
		List<Payment> paylist = payservice.select(null);//查询支付方式
		model.addAttribute("paylist", paylist);
		
		List<ShoopingCart> scl=scservice.selectByScidAndPdtid(id);
		model.addAttribute("scl", scl);
		
		return "foreground/order/toorder";
	}*/
	
	/**
	 * 进入订单确认界面
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/intoorder",method=RequestMethod.POST)
	public String intotoorder(String id,Model model,HttpServletRequest request,ShoopingCart sc,HttpSession session){
		
		if(session.getAttribute("suser")!=null){//判断用户是否登录
			
			ShoopingCart spct=scservice.selectByPdtid(id);//根据商品id查询购物车信息
			if(spct!=null){//购物车中有该商品
				
				String pdtnum=request.getParameter("pdtnumber");
				BigDecimal pd=new BigDecimal(pdtnum);
				sc.setPdtnumber(pd);
				sc.setScid(spct.getScid());
				sc.setPdtid(spct.getPdtid());
				sc.setPdtname(spct.getPdtname());
				sc.setPdtpicture(spct.getPdtpicture());
				sc.setPdtid(spct.getPdtid());
				sc.setPdtsprice(spct.getPdtsprice());
				
				String totalprice=request.getParameter("totalprice");
				BigDecimal total=new BigDecimal(totalprice);
				sc.setTotalprice(total);
				scservice.updatePdtnumber(sc);//修改购物车表中该商品的信息
				
				//根据商品id查询购物车信息
				sc=scservice.selectByPdtid(id);
				model.addAttribute("sc", sc);
				
				List<Delivery> dlvlist = dservice.select(null);//查询配送方式
				model.addAttribute("dlvlist", dlvlist);
				
				List<Payment> paylist = payservice.select(null);//查询支付方式
				model.addAttribute("paylist", paylist);
				
				return "foreground/order/toorder";
			}else{
				
				String scid=UUID.randomUUID().toString();
				sc.setScid(scid);
				
				Productss product=proservice.selectByid(id);//根据id查询一条商品信息
				sc.setPdtid(product.getPdtid());//将商品信息插入到购物车
				sc.setPdtname(product.getPdtname());
				sc.setPdtpicture(product.getPdtpicture());
				sc.setPdtsprice(product.getPdtsprice());
				String pdtnum=request.getParameter("pdtnumber");
				BigDecimal pd=new BigDecimal(pdtnum);
				sc.setPdtnumber(pd);
				
				scservice.add(sc);
				//scservice.updatePdtnumber(sc);//修改购物车表中该商品的数量
				
				//根据商品id查询购物车信息
				sc=scservice.selectByPdtid(id);
				model.addAttribute("sc", sc);
				
				List<Delivery> dlvlist = dservice.select(null);//查询配送方式
				model.addAttribute("dlvlist", dlvlist);
				
				List<Payment> paylist = payservice.select(null);//查询支付方式
				model.addAttribute("paylist", paylist);
				
				return"foreground/order/toorder";
			}
		}else{
			return "foreground/login";
		}
	}
	
	
	
	
	
	/**
	 * 增加订单（和订单明细）
	 * @return
	 */
	@RequestMapping(value="/addord",method=RequestMethod.POST)
	public String addord(Ord ord,OrderDetail od,Model model){
		
		String ordid=UUID.randomUUID().toString();
		ord.setOrdid(ordid);
		
		Date date=new Date();
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//控制日期格式
		String dt=df.format(date);
		ord.setOrddate(dt);
		
		oservice.add(ord);
		
		Ord order=oservice.selectOrdByordid(ordid);//根据订单id查询订单信息
		
		String odid=UUID.randomUUID().toString();
		od.setOdid(odid);
		od.setPdtid(ord.getPdtid());
		od.setOrderid(ord.getOrdid());
		od.setOname(ord.getRevname());
		od.setOstime(ord.getOrddate());
		
		model.addAttribute("order", order);
		odservice.addOrdDetail(od);//添加一条订单明细
		
		List<Delivery> dlvlist = dservice.select(null);//查询配送方式
		model.addAttribute("dlvlist", dlvlist);
		
		List<Payment> paylist = payservice.select(null);//查询支付方式
		model.addAttribute("paylist", paylist);
		
		Productss prolist=proservice.selectByid(ord.getPdtid());//查询商品
		model.addAttribute("prolist", prolist);
		
		return "foreground/order/list";
	}
	
	
	
	////////////////////////////////////////////
	
	/**
	 * 查询所有的订单
	 * @param orderdto
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/orderlist",method=RequestMethod.GET)
	public String selectreturn(OrderDetailDto orderdto,Model model,HttpSession session) {
		return null;
		
		/*List<OrderDetailDto> list=service.selectallorder(orderdto);
		model.addAttribute("list", list);
		
		return "foreground/order/allorder";*/
		
		
		/*if(session.getAttribute("suser")!=null){
			List<OrderDetailDto> list=service.orderdetail(orderdto);
			model.addAttribute("list", list);
			return "foreground/return/list";
		}else{
			return "foreground/login";
		}*/
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
