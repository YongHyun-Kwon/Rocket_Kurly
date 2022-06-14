package kr.co.rocketkurly.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.rocketkurly.admin.domain.MemberRegCntDomain;
import kr.co.rocketkurly.admin.domain.NoticeDomain;
import kr.co.rocketkurly.admin.domain.OrderCntDomain;
import kr.co.rocketkurly.admin.domain.OrderDomain;
import kr.co.rocketkurly.admin.domain.QuestionCntDomain;
import kr.co.rocketkurly.admin.domain.RevenueDomain;
import kr.co.rocketkurly.admin.domain.UserHistoryDomain;
import kr.co.rocketkurly.admin.service.AdminService;
import kr.co.rocketkurly.admin.service.CouponService;
import kr.co.rocketkurly.admin.service.DashboardService;
import kr.co.rocketkurly.admin.service.OrderService;
import kr.co.rocketkurly.admin.vo.AdminVO;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.CouponVO;

@Controller
public class AdminController {

	@Autowired(required = false)
	DashboardService dashService;

	@Autowired(required = false)
	CouponService cs;

	@Autowired(required = false)
	private OrderService os;

	@Autowired(required = false)
	private AdminService as;

	@RequestMapping(value = "/admin/jsp/index.do", method = RequestMethod.GET)
	public String mainPage(Model model) {

		List<UserHistoryDomain> visitList = dashService.visitCount();
		List<MemberRegCntDomain> regCntList = dashService.memberRegCount();
		List<OrderCntDomain> orderCntList = dashService.orderCount();
		List<QuestionCntDomain> questionCntList = dashService.questionCount();
		List<RevenueDomain> revenueList = dashService.revenue();
		List<NoticeDomain> noticeList = dashService.notice();

		model.addAttribute("visitList", visitList);
		model.addAttribute("regCntList", regCntList);
		model.addAttribute("orderCntList", orderCntList);
		model.addAttribute("questionCntList", questionCntList);
		model.addAttribute("revenueList", revenueList);
		model.addAttribute("noticeList", noticeList);

		return "admin/jsp/index";

	}// mainPage

	@RequestMapping(value = "/admin/jsp/order_status.do", method = { GET, POST })
	public String selectOrder(Model model, OrderDomain oVO, BoardVO bVO) {

		// �쟾泥� �젅肄붾뱶�쓽 �닔
		int totalCnt = os.searchTotalCount();
		// 2. �븳�솕硫댁뿉 蹂댁뿬以� 寃뚯떆臾쇱쓽 �닔
		int pageScale = os.pageScale();
		// 3. 珥� �럹�씠吏� �닔
		int pageCnt = os.pageCnt(totalCnt, pageScale);
		// 4. �떆�옉踰덊샇
		int startNum = os.StartNum(bVO.getCurrentPage(), pageScale);
		// 5. �걹踰덊샇
		int endNum = os.endNum(startNum, pageScale);
		// �넗�깉 �뒪耳��씪
		int totalScale = os.numScale();
		// �젣�씪 留덉�留� �럹�씠吏� 怨꾩궛
		// �떆�옉 , �걹 �럹�씠吏� 怨꾩궛
		bVO = os.calcStartEndPage(bVO, totalScale, pageCnt);

		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);

		model.addAttribute("orderList", os.searchMember(bVO));
		model.addAttribute("startPage", bVO.getStartPage());
		model.addAttribute("endPage", bVO.getEndPage());
		model.addAttribute("currentPage", bVO.getCurrentPage());
		model.addAttribute("pageCnt", pageCnt);
		/* model.addAttribute("orderList",os.selectOrder()); */
		model.addAttribute("order_no", oVO.getOrder_no());
		os.modifyOrderStat(oVO);
		return "admin/jsp/order_status";

	}// selectOrder

	@RequestMapping(value = "/admin/jsp/add_recipe.do", method = GET)
	public String addRecipe() {

		return "admin/jsp/add_recipe";

	}// addRecipe

	
	
	@RequestMapping(value = "/admin/jsp/order_status2.do", method = GET)
	public String filterOrder(Model model , BoardVO bVO) {
		
		//�쟾泥� �젅肄붾뱶�쓽 �닔
		int totalCnt=os.searchKeywordCount(bVO);
		//2. �븳�솕硫댁뿉 蹂댁뿬以� 寃뚯떆臾쇱쓽 �닔

		int pageScale = os.pageScale();
		// 3. 珥� �럹�씠吏� �닔
		int pageCnt = os.pageCnt(totalCnt, pageScale);
		// 4. �떆�옉踰덊샇
		int startNum = os.StartNum(bVO.getCurrentPage(), pageScale);
		// 5. �걹踰덊샇
		int endNum = os.endNum(startNum, pageScale);
		// �넗�깉 �뒪耳��씪
		int totalScale = os.numScale();
		// �젣�씪 留덉�留� �럹�씠吏� 怨꾩궛
		// �떆�옉 , �걹 �럹�씠吏� 怨꾩궛
		bVO = os.calcStartEndPage(bVO, totalScale, pageCnt);

		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);

		model.addAttribute("orderList", os.searchKeyword(bVO));
		model.addAttribute("startPage", bVO.getStartPage());
		model.addAttribute("endPage", bVO.getEndPage());
		model.addAttribute("keyword", bVO.getKeyword());
		model.addAttribute("currentPage", bVO.getCurrentPage());

		return "admin/jsp/order_status";

	}// filterMember

	@RequestMapping(value = "/admin/jsp/create_coupon.do", method = { GET, POST })
	public String createCoupon(Model model, CouponVO cVO) {
		return "admin/jsp/create_coupon";

	}// createCoupon

	@RequestMapping(value = "/admin/jsp/createProcess.do", method = { GET, POST })
	public String createProcess(Model model, CouponVO cVO) {
		
		System.out.println("쿠폰코드값>>>>>"+cVO.getCoupon_no());
		cs.addCoupon(cVO);

		return "redirect:create_coupon.do";

	}// createProcess

	@RequestMapping(value = "/admin/jsp/customer_grade.do", method = GET)
	public String customerGrade() {

		return "admin/jsp/customer_grade";

	}// customerGrade

//	@RequestMapping(value = "/admin/jsp/customer1.do", method = GET)
//	public String customer() {
//		
//		return "admin/jsp/customer";
//		
//	}// customer

	@RequestMapping(value = "/admin/jsp/login.do", method = GET)
	public String login() {

		return "admin/jsp/login";

	}// login

	@RequestMapping(value = "/admin/jsp/logincheck.do", method = POST)
	public ModelAndView loginCheck(AdminVO aVO, HttpServletRequest request) {

		HttpSession session = request.getSession();

		ModelAndView mav = new ModelAndView();

		String aID = as.loginCheck(aVO);

		if (!aID.equals("fail")) {

			session.setAttribute("aID", aID);
			mav.setViewName("redirect:/admin/jsp/index.do");

		} else {

			mav.setViewName("redirect:/admin/jsp/login.do");
			mav.addObject("aID", aID);

		} // end else

		return mav;

	}// loginCheck
	
	@RequestMapping(value = "/admin/jsp/logout.do", method = GET)
	public String logoutProcess(HttpServletRequest request) {

		HttpSession session = request.getSession();

		session.invalidate();

		return "redirect:/admin/jsp/login.do";

	}// logoutProcess

}// class
