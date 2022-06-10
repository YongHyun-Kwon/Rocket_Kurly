package kr.co.rocketkurly.cust.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.PaymentDAO;
import kr.co.rocketkurly.cust.vo.OrderItemTempVO;
import kr.co.rocketkurly.cust.vo.OrderItemVO;
import kr.co.rocketkurly.cust.vo.OrderingVO;

@Component
public class PaymentService {
	
	@Autowired(required = false)
	private PaymentDAO pDAO;
	
	public int ordering(OrderingVO oVO, OrderItemVO oiVO) {
		
		int cnt = 0;
		
		try {
			
			cnt = pDAO.insertOrdering(oVO);
			
		} catch (PersistenceException pe) {
			
			pe.printStackTrace();
			
		}// end catch
		
		if( cnt == 1) {
			
			int orderNo = pDAO.selectOrderNo();
			List<OrderItemTempVO> orderItemList = new ArrayList<OrderItemTempVO>(); 
			
			OrderItemTempVO otVO = null; 
			for(int i = 0; i < oiVO.getItemNo().length ; i++) {
				
				otVO = new OrderItemTempVO();
				otVO.setItemNo(oiVO.getItemNo()[i]);
				otVO.setQuantity(oiVO.getQuantity()[i]);
				otVO.setOrderNo(orderNo);
				orderItemList.add(otVO);
				
			}// end for
			
			int itemCnt = pDAO.insertOrderItem(orderItemList);
			
			if(oVO.getFlag().equals("n")) { 
				
				oVO.setOrderNo(orderNo);
				int recipient = pDAO.insertRecipient(oVO);
				
			}// end if
			
			if(oVO.getCouponNo() != null || !oVO.getCouponNo().equals("")) {
				
				int usingCoupon = pDAO.deleteCoupon(oVO.getCouponNo());
				
			}
			
		}
		
		return cnt;
		
	}// ordering
	
	public int orderNo() {
		
		int orderNo = 0;
		
		try {
			orderNo = pDAO.selectOrderNo();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
	
		return orderNo;
		
	}// orderNo
}
