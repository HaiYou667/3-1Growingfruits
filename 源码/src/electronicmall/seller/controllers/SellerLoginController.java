package edu.etime.electronicmall.seller.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 商家登录
 * @author 郭佳
 *
 */
@Controller
@RequestMapping("/foreground/seller")
public class SellerLoginController {

	@RequestMapping(value="/enter",method=RequestMethod.GET)
	public String tologin(){
		return "foreground/seller";
	}
}
