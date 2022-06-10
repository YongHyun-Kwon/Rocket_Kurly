package kr.co.rocketkurly.admin.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.dao.CouponDAO;
import kr.co.rocketkurly.cust.vo.CouponVO;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Component
public class CouponService {

	@Autowired(required = false)
	private CouponDAO cDAO;
	
	/**
	 * 쿠폰 발행
	 * @param cVO
	 * @return
	 */
	public void addCoupon(CouponVO cVO) {
		
		List<String> list = null;
		String coupon_no = "";
		
		Date date = new Date();
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd"); 
		String today = simpleDateFormat.format(date);
		
		int seq = cDAO.selectMaxCouponNo() + 1;
		
		try {
			
			list = cDAO.selectAllMember();
			
			for(String id: list){
				
				// 쿠폰번호 생성
				//C+YYYY+MM+DD+5자리 시퀀스
				cVO.setCoupon_no(coupon_no.concat("C").concat(today).concat(String.format("%05d", seq++)));
				
				cVO.setMember_id(id);

				cDAO.insertCoupon(cVO);
				
			}//end for
				
			
			
		} catch (PersistenceException pe) {
			pe.printStackTrace();

		} // end catch
		
	}//addCoupon

}//class
