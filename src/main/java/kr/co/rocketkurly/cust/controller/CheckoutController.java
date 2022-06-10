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
import kr.co.rocketkurly.cust.service.PaymentService;
import kr.co.rocketkurly.cust.vo.OrderItemTempVO;
import kr.co.rocketkurly.cust.vo.OrderItemVO;
import kr.co.rocketkurly.cust.vo.OrderingVO; 

@Controller
public class CheckoutController {
	
	@Autowired(required = false)
	private MyPageService mps;

	@Autowired(required = false)
	private MemberService ms;
	
	@Autowired(required = false)
	private PaymentService ps;

	@RequestMapping(value = "/checkout.do", method = { GET, POST })
	public String checkoutPage(Model model, OrderItemVO oVO, HttpServletRequest request) { 
		
		List<OrderItemTempVO> list = new ArrayList<OrderItemTempVO>(); 
		
		OrderItemTempVO otVO = null; 
		for(int i = 0; i < oVO.getItemNo().length ; i++) {
			
			otVO = new OrderItemTempVO();
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
	public String orderProcess(OrderItemVO oiVO, OrderingVO orVO) {
		
		int orderFlag = ps.ordering(orVO, oiVO);
		
		return "redirect:payment.do";
		
	}// orderProcess
	 
	
	@RequestMapping(value = "/payment.do", method = GET)
	public String paymentPage(OrderItemVO oVO, OrderingVO rVO) {
		
		return "payment";
		
	}// checkoutPage
	
	@RequestMapping(value = "/paycomplete.do", method = GET)
	public String payCompletePage() {
		
		return "paycomplete";
		
	}// payCompletePage
	
}// class
