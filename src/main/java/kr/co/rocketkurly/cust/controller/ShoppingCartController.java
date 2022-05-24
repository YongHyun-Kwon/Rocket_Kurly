package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class ShoppingCartController {

	@RequestMapping(value = "/shoping-cart.do", method = GET)
	public String shoppingCartPage() {
		
		return "shoping-cart";
		
	}// shoppingCartPage
	
}// class
