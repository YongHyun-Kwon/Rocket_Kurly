package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class CheckoutController {

	@RequestMapping(value = "/checkout.do", method = GET)
	public String checkoutPage() {
		
		return "checkout";
		
	}// checkoutPage
	
	@RequestMapping(value = "/paycomplete.do", method = GET)
	public String payCompletePage() {
		
		return "paycomplete";
		
	}// payCompletePage
	
}// class
