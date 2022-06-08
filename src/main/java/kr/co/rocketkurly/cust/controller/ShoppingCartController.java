package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.rocketkurly.cust.service.ShoppingService;
import kr.co.rocketkurly.cust.vo.CartVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class ShoppingCartController {
	
	@Autowired(required = false)
	private ShoppingService ss;

	
	
	@RequestMapping(value = "/shoping-cart.do", method = GET)
	public String shoppingCartPage() {
		
		return "shoping-cart";
		
	}// shoppingCartPage
	
	
	@ResponseBody
	@RequestMapping(value = "/shopingOne.do", method = GET ,produces = "application/json;charset=UTF-8")
	public String OneCartPage(CartVO cVO) {
		String data="��ٱ��Ͽ� ��Ⱑ �����߽��ϴ�.";
		int cnt=0;
		cVO.getQuantity();
		cnt=ss.addOneCart(cVO);
		
		if(cnt==1) {
			data="��ٱ��Ͽ� �߰��Ǿ����ϴ�.";
		}
		return data;
	}// shoppingCartPage
	
	
	
}// class
