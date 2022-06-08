package kr.co.rocketkurly.cust.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.rocketkurly.admin.domain.CouponDomain;
import kr.co.rocketkurly.cust.service.MyPageService;
import kr.co.rocketkurly.cust.vo.PayTempVO;
import kr.co.rocketkurly.cust.vo.PayVO; 

@Controller
public class CheckoutController {
	
	@Autowired(required = false)
	private MyPageService mps;

	@RequestMapping(value = "/checkout.do", method = { GET, POST })
	public String checkoutPage(Model model, PayVO pVO, HttpServletRequest request) { 
		List<PayTempVO> list = new ArrayList<PayTempVO>();
		
		PayTempVO ptVO = null;
		for(int i = 0; i < pVO.getItemNo().length ; i++) {
			
			ptVO = new PayTempVO();
			ptVO.setItemNo(pVO.getItemNo()[i]);
			ptVO.setItemName(pVO.getItemName()[i]);
			ptVO.setTotal(pVO.getTotal()[i]);
			ptVO.setQuantity(pVO.getQuantity()[i]);
			list.add(ptVO);
			
		}// end for
		
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("custID");

		List<CouponDomain> couponList = mps.coupon(id);

		model.addAttribute("couponList", couponList);
		model.addAttribute("payItem", list);
		 
		return "checkout";
		
	}// checkoutPage
	
	@RequestMapping(value = "/payment.do", method = GET)
	public String paymentPage() {
		
		return "payment";
		
	}// checkoutPage
	
	@RequestMapping(value = "/paycomplete.do", method = GET)
	public String payCompletePage() {
		
		return "paycomplete";
		
	}// payCompletePage
	
}// class
