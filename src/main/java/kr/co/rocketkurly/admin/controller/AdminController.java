package kr.co.rocketkurly.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	@RequestMapping(value = "/admin/jsp/index.do", method = RequestMethod.GET)
	public String mainPage() {
		
		return "admin/jsp/index";
		
	}// mainPage
	
	@RequestMapping(value = "/admin/jsp/add_categories.do", method = GET)
	public String addCategoriesPage() {
		System.out.println("123123asdasd");
		return "admin/jsp/add_categories";
		
	}// addCategoriesPage
	
	@RequestMapping(value = "/admin/jsp/add_product.do", method = GET)
	public String addProduct() {
		
		return "admin/jsp/add_product";
		
	}// addProduct
	
	@RequestMapping(value = "/admin/jsp/add_recipe.do", method = GET)
	public String addRecipe() {
		
		return "admin/jsp/add_recipe";
		
	}// addRecipe
	
	@RequestMapping(value = "/admin/jsp/all_categories.do", method = GET)
	public String allCategories() {
		
		return "admin/jsp/all_categories";
		
	}// allCategories
	
	@RequestMapping(value = "/admin/jsp/all_products.do", method = GET)
	public String allProducts() {
		
		return "admin/jsp/all_products";
		
	}// allProducts
	
	@RequestMapping(value = "/admin/jsp/create_coupon.do", method = GET)
	public String createCoupon() {
		
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
	
	@RequestMapping(value = "/admin/jsp/inquiry.do", method = GET)
	public String inquiry() {
		
		return "admin/jsp/inquiry";
		
	}// inquiry
	
	@RequestMapping(value = "/admin/jsp/login.do", method = GET)
	public String login() {
		
		return "admin/jsp/login";
		
	}// login

}// class
