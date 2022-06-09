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
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.service.MemberService;
import kr.co.rocketkurly.cust.service.MyPageService;
import kr.co.rocketkurly.cust.vo.OrderTempVO;
import kr.co.rocketkurly.cust.vo.OrderVO;
import kr.co.rocketkurly.cust.vo.RecipientVO; 

@Controller
public class CheckoutController {
	
	@Autowired(required = false)
	private MyPageService mps;

	@Autowired(required = false)
	private MemberService ms;

	@RequestMapping(value = "/checkout.do", method = { GET, POST })
	public String checkoutPage(Model model, OrderVO oVO, HttpServletRequest request) { 
		
		List<OrderTempVO> list = new ArrayList<OrderTempVO>(); 
		
		OrderTempVO otVO = null; 
		for(int i = 0; i < oVO.getItemNo().length ; i++) {
			
			otVO = new OrderTempVO();
			otVO.setItemNo(oVO.getItemNo()[i]);
			otVO.setItemName(oVO.getItemName()[i]);
			otVO.setTotal(oVO.getTotal()[i]);
			otVO.setQuantity(oVO.getQuantity()[i]);
			list.add(otVO);
			
		}// end for
		
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("custID");
		
		if( id != null ) {
			
			MemberDomain md = ms.memberInfo(id);
			List<CouponDomain> couponList = mps.coupon(id);
			model.addAttribute("memberInfo", md);
			model.addAttribute("couponList", couponList);

		} else {
			
			return "index";
			
		}// end else

		model.addAttribute("payItem", list);
		 
		return "checkout";
		
	}// checkoutPage
	
	
	@RequestMapping(value = "/orderpro.do", method = POST)
	public String orderProcess(OrderVO oVO, RecipientVO rVO) {
		
		List<OrderTempVO> list = new ArrayList<OrderTempVO>(); 
		
		OrderTempVO otVO = null; 
		for(int i = 0; i < oVO.getItemNo().length ; i++) {
			
			otVO = new OrderTempVO();
			otVO.setItemNo(oVO.getItemNo()[i]);
			otVO.setItemName(oVO.getItemName()[i]);
			otVO.setTotal(oVO.getTotal()[i]);
			otVO.setQuantity(oVO.getQuantity()[i]);
			list.add(otVO);
			
		}// end for
		
		
		
		
		return "";
		
	}// orderProcess
	 
	
	@RequestMapping(value = "/payment.do", method = GET)
	public String paymentPage(OrderVO oVO, RecipientVO rVO) {
		
		System.out.println(oVO);
		System.out.println(rVO);
		
		return "payment";
		
	}// checkoutPage
	
	@RequestMapping(value = "/paycomplete.do", method = GET)
	public String payCompletePage() {
		
		return "paycomplete";
		
	}// payCompletePage
	
}// class
