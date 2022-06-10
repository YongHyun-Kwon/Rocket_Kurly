package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.rocketkurly.cust.service.MainPageService;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class MainController {
	
	@Autowired(required = false)
	private MainPageService ms;
	
	@RequestMapping(value = "/index.do", method = {RequestMethod.GET, POST})
	public String mainPage(Model model) {
		
		model.addAttribute("recommendList",ms.selectRecommend());
		
		model.addAttribute("lowestList",ms.selectLowestPrice());
		
		model.addAttribute("hotList", ms.selectHotItem());
		
		
		return "index";
		
	}// mainPage


}// class
