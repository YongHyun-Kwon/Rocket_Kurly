package kr.co.rocketkurly.cust.service;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.ShoppingDAO;
import kr.co.rocketkurly.cust.vo.CartVO;


@Component
public class ShoppingService {
	
	@Autowired(required = false)
	private ShoppingDAO sd;
	
	public int addOneCart(CartVO cVO) {

		int cnt=0;
		cVO.setQuantity(1);

		try {
			cnt=sd.confirm(cVO.getMember_id());
			
			if(cnt==0) {
				cnt=sd.insertNewCart(cVO);
				
			}else {
				cVO.setCart_no(sd.selectCartBody(cVO.getMember_id()));
				cnt=sd.insertOneCart(cVO);
				
			}

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		return cnt;

	}// modifyMember
	
	

}
