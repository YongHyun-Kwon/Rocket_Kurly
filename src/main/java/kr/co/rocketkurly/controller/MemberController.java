package kr.co.rocketkurly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;;

@Controller
public class MemberController {

	@RequestMapping(value = "/login.do", method = GET)
	public String loginPage() {
		
		return "login";
		
	}// loginPage
	
	@RequestMapping(value = "/sign.do", method = GET)
	public String signPage() {
		
		return "sign";
		
	}// signPage
	
	@RequestMapping(value = "/sign2.do", method = GET)
	public String sign2Page() {
		
		return "sign2";
		
	}// loginPage
	
	@RequestMapping(value = "/sign3.do", method = {GET, POST})
	public String sign3Page() {
		
		return "sign3";
		
	}// sign3Page
	
	@RequestMapping(value = "/mypage.do", method = {GET, POST})
	public String myPage() {
		
		return "mypage";
		
	}//myPage
	
	@RequestMapping(value = "/setting.do", method = POST)
	public String settingPage() {
		
		return "setting";
		
	}// settingPage
	
	@RequestMapping(value = "/orderhistory.do", method = {GET, POST})
	public String orderhistoryPage() {
		
		return "orderhistory";
		
	}// orderhistoryPage
	
	@RequestMapping(value = "/review.do", method = {GET, POST})
	public String reviewPage() {
		
		return "review";
		
	}// review
	
	@RequestMapping(value = "/favorite.do", method = {GET, POST})
	public String favoritePage() {
		
		return "favorite";
		
	}// favorite
	
	@RequestMapping(value = "/inquiry.do", method = {GET, POST})
	public String inquiryPage() {
		
		return "inquiry";
		
	}// inquiry
	
	@RequestMapping(value = "/coupon.do", method = {GET, POST})
	public String couponPage() {
		
		return "coupon";
		
	}// inquiry
	
	@RequestMapping(value = "/write-inquiry.do", method = {GET, POST})
	public String writeInquiryPage() {
		
		return "write-inquiry";
		
	}// inquiry
	
}// class
