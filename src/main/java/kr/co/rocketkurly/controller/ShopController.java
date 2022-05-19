package kr.co.rocketkurly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class ShopController {
	
//	@RequestMapping(value = "/shop.do", method = GET)
//	public String shopPage() {
//		
//		return "shop";
//		
//	}// shopPage
	
	@RequestMapping(value = "/shop-details.do", method = GET)
	public String shopDetailsPage() {
		
		return "shop-details";
		
	}// shopDetailsPage
	
	@RequestMapping(value = "/shop-grid.do", method = GET)
	public String shopGridPage() {
		
		return "shop-grid";
		
	}// shopDetailsPage
	
}// class
