package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class BlogController {

	@RequestMapping(value = "/blog.do", method = GET)
	public String blogPage() {
		
		return "blog";
		
	}// blogPage

	@RequestMapping(value = "/blog-details.do", method = GET)
	public String blogDetailsPage() {
		
		return "blog-details";
		
	}// blogDetailsPage
	
}// class
