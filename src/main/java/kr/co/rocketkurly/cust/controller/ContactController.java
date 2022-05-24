package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class ContactController {

	@RequestMapping(value = "/contact.do", method = GET)
	public String contactPage() {
		
		return "contact";
		
	}// contactPage
	
}// class
