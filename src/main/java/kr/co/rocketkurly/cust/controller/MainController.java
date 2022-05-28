package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class MainController {
	
	@RequestMapping(value = "/index.do", method = {RequestMethod.GET, POST})
	public String mainPage() {
		
		return "index";
		
	}// mainPage

}// class
