package kr.co.rocketkurly.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.rocketkurly.admin.domain.MemberRegCntDomain;
import kr.co.rocketkurly.admin.domain.NoticeDomain;
import kr.co.rocketkurly.admin.domain.OrderCntDomain;
import kr.co.rocketkurly.admin.domain.QuestionCntDomain;
import kr.co.rocketkurly.admin.domain.RevenueDomain;
import kr.co.rocketkurly.admin.domain.UserHistoryDomain;
import kr.co.rocketkurly.admin.service.CouponService;
import kr.co.rocketkurly.admin.service.DashboardService;
import kr.co.rocketkurly.cust.vo.CouponVO;

@Controller
public class AdminController {
	
	@Autowired(required = false)
	DashboardService dashService;
	
	@Autowired(required = false)
	CouponService cs;
	
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
	
	@RequestMapping(value = "/admin/jsp/add_categories.do", method = GET)
	public String addCategoriesPage() {
		System.out.println("123123asdasd");
		return "admin/jsp/add_categories";
		
	}// addCategoriesPage
	
	
	@RequestMapping(value = "/admin/jsp/add_recipe.do", method = GET)
	public String addRecipe() {
		
		return "admin/jsp/add_recipe";
		
	}// addRecipe
	
	@RequestMapping(value = "/admin/jsp/all_categories.do", method = GET)
	public String allCategories() {
		
		return "admin/jsp/all_categories";
		
	}// allCategories
	

	
	@RequestMapping(value = "/admin/jsp/create_coupon.do", method = { GET,POST })
	public String createCoupon(Model model, CouponVO cVO) {
		
		cs.addCoupon(cVO);
		
		return "admin/jsp/create_coupon";
		
	}// createCoupon
	
	@RequestMapping(value = "/admin/jsp/customer_grade.do", method = GET)
	public String customerGrade() {
		
		return "admin/jsp/customer_grade";
		
	}// customerGrade
	
	@RequestMapping(value = "/admin/jsp/customer.do", method = GET)
	public String customer() {
		
		return "admin/jsp/customer";
		
	}// customer
	
	@RequestMapping(value = "/admin/jsp/edit_categories.do", method = GET)
	public String editCategories() {
		
		return "admin/jsp/edit_categories";
		
	}// editCategories
	
	@RequestMapping(value = "/admin/jsp/login.do", method = GET)
	public String login() {
		
		return "admin/jsp/login";
		
	}// login

}// class
