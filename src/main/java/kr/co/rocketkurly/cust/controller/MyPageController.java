package kr.co.rocketkurly.cust.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.rocketkurly.admin.domain.CouponDomain;
import kr.co.rocketkurly.admin.domain.QuestionDomain;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.service.MemberService;
import kr.co.rocketkurly.cust.service.MyPageService;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Controller
public class MyPageController {

	@Autowired(required = false)
	private MyPageService mps;

	@Autowired(required = false)
	private MemberService ms;

	@RequestMapping(value = "/mypage.do", method = { GET, POST })
	public String myPage(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();

		model.addAttribute("nickname", session.getAttribute("nickname"));

		return "mypage";

	}// myPage

	@RequestMapping(value = "/pwcheck.do", method = POST)
	public ModelAndView pwCheckProcess(String pass, HttpServletRequest request) {

		HttpSession session = request.getSession();

		ModelAndView mav = new ModelAndView();

		String userID = (String) session.getAttribute("custID");

		MemberVO mVO = new MemberVO();

		mVO.setId(userID);
		mVO.setPw(pass);

		MemberDomain md = ms.loginCheck(mVO);

		if (md == null) {

			mav.addObject("msg", "fail");
			mav.setViewName("mypage");

		} else {

			mav.setViewName("redirect:setting.do");

		} // end else

		return mav;
	}

	@RequestMapping(value = "/setting.do", method = { GET, POST })
	public String settingPage(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();

		MemberDomain md = ms.memberInfo((String) session.getAttribute("custID"));

		model.addAttribute("custData", md);

		return "setting";

	}// settingPage

	@RequestMapping(value = "/modifymember.do", method = { GET, POST })
	public String settingProcessPage(MemberVO mVO, HttpServletRequest request) {

		HttpSession session = request.getSession();

		mVO.setId((String) session.getAttribute("custID"));

		int cnt = mps.modifyMember(mVO);

		if (cnt == 0) {
			return "redirect:index.do";
		}

		return "redirect:setting.do";

	}

	@ResponseBody
	@RequestMapping(value = "/resignmember.do", method = { GET, POST })
	public String resignMemberProcess(HttpServletRequest request) {

		HttpSession session = request.getSession();

		String msg = mps.resignMember((String) session.getAttribute("custID"));

		return msg;

	}// pwFindProcess

	@RequestMapping(value = "/orderhistory.do", method = { GET, POST })
	public String orderhistoryPage() {

		return "orderhistory";

	}// orderhistoryPage

	@RequestMapping(value = "/review.do", method = { GET, POST })
	public String reviewPage() {

		return "review";

	}// review

	@RequestMapping(value = "/write-review.do", method = { GET, POST })
	public String writeReviewPage() {

		return "write-review";

	}// review

	@RequestMapping(value = "/favorite.do", method = { GET, POST })
	public String favoritePage() {

		return "favorite";

	}// favorite

	@RequestMapping(value = "/inquiry.do", method = { GET, POST })
	public String inquiryPage(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("custID");

		List<QuestionDomain> inquiryList = mps.inquiry(id);
		model.addAttribute("inquiryList", inquiryList);

		return "inquiry";

	}// inquiry

	@RequestMapping(value = "/inquiry-detail.do", method = { GET, POST })
	public String inquiryDetailPage() {

		return "inquiry-detail";

	}// inquiry

	@RequestMapping(value = "/coupon.do", method = { GET, POST })
	public String couponPage(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("custID");

		List<CouponDomain> couponList = mps.coupon(id);

		model.addAttribute("couponList", couponList);

		return "coupon";

	}// inquiry

	@RequestMapping(value = "/write-inquiry.do", method = { GET, POST })
	public String writeInquiryPage() {

		return "write-inquiry";

	}// inquiry

}
