package kr.co.rocketkurly.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


//import com.fasterxml.jackson.core.JsonProcessingException;

import kr.co.rocketkurly.admin.service.CategoriesSevice;
import kr.co.rocketkurly.cust.vo.CategoriesVO;

@Controller
public class AdminCategoriesController {
	@Autowired(required = false)
	private CategoriesSevice cs;
	
//	@RequestMapping(value = "/admin/jsp/add_product.do", method = GET)
//	public String selectCategories(Model model , CategoriesVO cVO) throws JsonProcessingException {
//
//		List<CategoriesVO> ccats = cs.selectCCategories();
//		List<String> pcats = cs.selectPCategories();
//		model.addAttribute("selectCCat",cs.selectCCategories());
//		model.addAttribute("selectPCat",cs.selectPCategories());
		
//		Map<String, List<String>> map = new HashMap<String, List<String>>();
//		for(String pcat : pcats) {
//			List<String> list = new ArrayList<String>();
//			map.put(pcat, list);
//		}
		
//		for(CategoriesVO cvo : ccats) {
//			map.get(cvo.getP_category_id()).add(cvo.getC_category_id());
//		}
//		
//		model.addAllAttributes(map);
		
//		return "admin/jsp/add_product";
		
//	}// allProducts
	

}//class
