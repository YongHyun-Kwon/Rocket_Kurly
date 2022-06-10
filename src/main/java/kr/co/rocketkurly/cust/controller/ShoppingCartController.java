package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.rocketkurly.cust.domain.CartDomain;
import kr.co.rocketkurly.cust.service.ShoppingService;
import kr.co.rocketkurly.cust.vo.CartVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class ShoppingCartController {
	
	@Autowired(required = false)
	private ShoppingService ss;
	
	@RequestMapping(value = "/shoping-cart.do", method = GET)
	public String shoppingCartPage(Model model , HttpServletRequest request,CartVO cVO) {
		HttpSession session =  request.getSession();
		
		cVO.setMember_id((String)session.getAttribute("custID"));
		
		if(cVO.getMember_id()!=null) {
			model.addAttribute("cartData",ss.searchCart(cVO));
		}

		
		return "shoping-cart";
		
	}// shoppingCartPage
	
	
	@ResponseBody
	@RequestMapping(value = "/addCart.do", method = GET ,produces = "application/json;charset=UTF-8")
	public String addCartPage(CartVO cVO) {
		String data="장바구니에 담기가 실패했습니다.";
		int cnt=0;
		
		if(cVO.getQuantity()==0) {			
			cnt=ss.addOneCart(cVO);
		}else {
			cnt=ss.addMultiCart(cVO);
		}
		
		if(cnt==1) {
			data="장바구니에 추가되었습니다.";
		}
		return data;
	}// shoppingCartPage
	
	@ResponseBody
	@RequestMapping(value = "/updateCart.do", method = GET ,produces = "application/json;charset=UTF-8")
	public String updateCartPage(CartVO cVO) {
		String data="장바구니에 담기가 실패했습니다.";
		
		System.out.println(cVO.getQuantity());
		
		return data;
	}// shoppingCartPage
	
	
	
	
}// class
