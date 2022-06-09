package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.rocketkurly.cust.service.mainPageService;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class MainController {
	
	@Autowired(required = false)
	private mainPageService ms;
	
	@RequestMapping(value = "/index.do", method = {RequestMethod.GET, POST})
	public String mainPage(Model model) {
		
		model.addAttribute("recommendList",ms.selectRecommend());
		model.addAttribute("lowestList",ms.selectLowestPrice());
		return "index";
		
	}// mainPage

	@RequestMapping(value = "/hotitem.do", method = {RequestMethod.GET, POST})
	public String hotItemView(Model model) {
		
		model.addAttribute("hotList","");
		
		return "index";
		
	}// mainPage

}// class
