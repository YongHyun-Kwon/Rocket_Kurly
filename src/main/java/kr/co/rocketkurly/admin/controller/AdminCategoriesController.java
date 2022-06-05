package kr.co.rocketkurly.admin.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.rocketkurly.admin.domain.CCategoriesDomain;
import kr.co.rocketkurly.admin.domain.CategoriesDomain;
import kr.co.rocketkurly.admin.domain.PCategoriesDomain;
import kr.co.rocketkurly.admin.service.CategoriesSevice;
import kr.co.rocketkurly.cust.vo.CategoriesVO; 

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
@Controller
public class AdminCategoriesController {
	@Autowired(required = false)
	private CategoriesSevice cs;
	
	
	@RequestMapping(value = "/admin/jsp/add_product.do", method = {GET,POST})
	public String selectCategories(Model model , CategoriesVO cVO){

		model.addAttribute("selectCCat",cs.selectCCategories());
		model.addAttribute("selectPCat",cs.selectPCategories());
		
		
		return "admin/jsp/add_product";
		
	}// selectCategories
	
	@RequestMapping(value = "/admin/jsp/all_categories.do", method = {GET,POST})
	public String selectAllCategories(Model model , PCategoriesDomain pcVO, CCategoriesDomain ccVO){
		
		model.addAttribute("selectPCatAll",cs.selectPCategoriesAll());
		model.addAttribute("selectCCatAll",cs.selectCCategoriesAll(ccVO.getP_category_id()));
		
		
		return "admin/jsp/all_categories";
		
	}// selectAllCategories
	
	

}//class
