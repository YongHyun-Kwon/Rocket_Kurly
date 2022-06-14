package kr.co.rocketkurly.cust.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

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
	public String checkoutPage(Model model, String cartFlag, OrderItemVO oVO, HttpServletRequest request) {

		List<OrderItemTempVO> list = new ArrayList<OrderItemTempVO>();

		OrderItemTempVO otVO = null;
		for (int i = 0; i < oVO.getItemNo().length; i++) {

			otVO = new OrderItemTempVO();
			otVO.setItemNo(oVO.getItemNo()[i]);
			otVO.setItemName(oVO.getItemName()[i]);
			otVO.setTotal(oVO.getTotal()[i]);
			otVO.setQuantity(oVO.getQuantity()[i]);
			list.add(otVO);

		} // end for

		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("custID");

		if (id != null) {

			MemberDomain md = ms.memberInfo(id);
			List<CouponDomain> couponList = mps.coupon(id);
			model.addAttribute("memberInfo", md);
			model.addAttribute("couponList", couponList);
			model.addAttribute("cartFlag", cartFlag);

		} else {

			return "index";

		} // end else

		model.addAttribute("payItem", list);

		return "checkout";

	}// checkoutPage

	@RequestMapping(value = "/payment.do", method = { GET, POST })
	public String paymentPage(OrderItemVO oiVO, OrderingVO orVO, Model model) {

		List<OrderItemTempVO> list = new ArrayList<OrderItemTempVO>();

		OrderItemTempVO otVO = null;
		for (int i = 0; i < oiVO.getItemNo().length; i++) {

			otVO = new OrderItemTempVO();
			otVO.setItemNo(oiVO.getItemNo()[i]);
			otVO.setItemName(oiVO.getItemName()[i]);
			otVO.setQuantity(oiVO.getQuantity()[i]);
			list.add(otVO);

		} // end for
		
		
		model.addAttribute("orVO", orVO);
		model.addAttribute("oiVO", list);

		return "payment";

	}// checkoutPage
	
	@RequestMapping(value = "/paypro.do", method = POST)
	public String paymentProProcess(OrderItemVO oiVO, OrderingVO orVO, RedirectAttributes redirect) {

		int orderNo = ps.ordering(orVO, oiVO);

		redirect.addAttribute("orderNo", orderNo);
		
		return "redirect:paycomplete.do";

	}// paymentProProcess

	@RequestMapping(value = "/paycomplete.do", method = GET)
	public String payCompletePage(@RequestParam("orderNo") int orderNo, Model model) {

		model.addAttribute("orderNo", orderNo);
		
		return "paycomplete";

	}// payCompletePage

}// class
