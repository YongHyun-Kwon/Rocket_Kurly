package kr.co.rocketkurly.cust.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.service.MemberService;
import kr.co.rocketkurly.cust.vo.MemberVO;;

@Controller
public class MemberController {

	@Autowired(required = false)
	private MemberService ms;

	@RequestMapping(value = "/login.do", method = {GET, POST})
	public String loginPage() {
 
		return "login";

	}// loginPage

	@RequestMapping(value = "/loginProcess.do", method = POST)
	public ModelAndView loginProcessPage(MemberVO mVO, HttpServletRequest request) {

		HttpSession session = request.getSession();

		ModelAndView mav = new ModelAndView();

		MemberDomain md = ms.loginCheck(mVO);

		if (md != null) {

			session.setAttribute("custID", md.getMember_id());
			session.setAttribute("nickname", md.getNickname());
			mav.setViewName("redirect:index.do"); 

		} else {

			mav.setViewName("login");
			mav.addObject("msg", "fail");

		} // end else

		return mav;

	}// loginProcessPage

	@RequestMapping(value = "/logout.do", method = GET)
	public String logoutProcess(HttpServletRequest request) {

		HttpSession session = request.getSession();

		session.invalidate();

		return "redirect:index.do";

	}
	
	@ResponseBody
	@RequestMapping(value = "/idfind.do", method = { GET, POST })
	public String idFindProcess(MemberVO mVO) {
		
		String findID = ms.findID(mVO);
		
		return findID;
		
	}// idFindProcess
	
	@ResponseBody
	@RequestMapping(value = "/pwfind.do", method = POST)
	public String pwFindProcess(MemberVO mVO) {
		
		String changePW = ms.findPW(mVO);
		
		return changePW;
		
	}// pwFindProcess
	
	@ResponseBody
	@RequestMapping(value = "/cust/idCheck.do", method = GET)
	public String idCheckProcess(String id) {

		String checkID = ms.idCheck(id);

		return checkID;

	}// idCheckProcess

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

		cnt = ms.signUp(mVO);

		if (cnt == 1) {

			mav.setViewName("sign3");
			mav.addObject("nickname", mVO.getNickname());

		} else {

			mav.setViewName("sign2");
			mav.addObject("msg", "다시 시도해주세요");

		} // end else

		return mav;

	}

	@RequestMapping(value = "/sign3.do", method = { GET, POST })
	public String sign3Page() {

		return "sign3";

	}// sign3Page



}// class
