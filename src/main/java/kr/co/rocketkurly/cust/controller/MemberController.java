package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.service.MemberService;
import kr.co.rocketkurly.cust.vo.MemberVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;;

@Controller
public class MemberController {

	@Autowired(required = false)
	private MemberService ms;
	
	@Inject
	BCryptPasswordEncoder pwEncoder;

	@RequestMapping(value = "/login.do", method = GET)
	public String loginPage() {
		
		return "login";
		
	}// loginPage
	
	@RequestMapping(value = "/loginProcess.do", method = POST)
	public ModelAndView loginProcessPage(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		ModelAndView mav = new ModelAndView();
		
		MemberDomain md = ms.loginCheck(request.getParameter("id"));
		
		if(md == null) {
			
			mav.setViewName("login");
			mav.addObject("msg", "fail");
		}
		
		String inputPass = request.getParameter("pw");
		
		boolean pwFlag = pwEncoder.matches(inputPass, md.getPw());
		
		
		if(md != null && pwFlag == true) {
			
			session.setAttribute("custID", md.getMember_id());
			mav.setViewName("index");
			
		} else {
			
			mav.setViewName("login");
			mav.addObject("msg", "fail");
			
		}
		
		return mav;
		
	}// loginProcessPage
	
	@RequestMapping(value = "/sign.do", method = GET)
	public String signPage() {
		
		return "sign";
		
	}// signPage
	
	@RequestMapping(value = "/sign2.do", method = GET)
	public String sign2Page() {
		
		return "sign2";
		
	}// loginPage
	
	@RequestMapping(value = "/signProcess.do", method = { GET, POST })
	public ModelAndView signProcessPage(@ModelAttribute("cust") MemberVO mVO) {
		
		ModelAndView mav = new ModelAndView();

		int cnt = 0;
		
		System.out.println(mVO);
		
		String inputPass = mVO.getPw();
		String password = pwEncoder.encode(inputPass);
		mVO.setPw(password);

		cnt = ms.signUp(mVO);
		
		if(cnt == 1) {
			
			mav.setViewName("sign3");
			mav.addObject("nickname", mVO.getNickname());
		
		} else {
			
			mav.setViewName("sign2");
			mav.addObject("msg", "다시 시도해주세요");
			
		}// end else
		
		
		return mav;
		
	}
	
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
	
	@RequestMapping(value = "/write-review.do", method = {GET, POST})
	public String writeReviewPage() {
		
		return "write-review";
		
	}// review
	
	@RequestMapping(value = "/favorite.do", method = {GET, POST})
	public String favoritePage() {
		
		return "favorite";
		
	}// favorite
	
	@RequestMapping(value = "/inquiry.do", method = {GET, POST})
	public String inquiryPage() {
		
		return "inquiry";
		
	}// inquiry
	
	@RequestMapping(value = "/inquiry-detail.do", method = {GET, POST})
	public String inquiryDetailPage() {
		
		return "inquiry-detail";
		
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
