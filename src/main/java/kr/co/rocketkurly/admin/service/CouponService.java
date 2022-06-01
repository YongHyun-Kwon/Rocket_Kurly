package kr.co.rocketkurly.admin.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.dao.CouponDAO;
import kr.co.rocketkurly.admin.domain.CouponDomain;
import kr.co.rocketkurly.cust.domain.MemberDomain;
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
	public int addCoupon(CouponVO cVO) {
		List<MemberVO> mVOList = null;
		int cnt =0;
		
		
		try {

			String coupon_no = cVO.getCoupon_no();
			String coupon_name = cVO.getCoupon_name();
			Date e_date = cVO.getE_date();
			int discount = cVO.getDiscount();
			

			cnt = cDAO.insertCoupon(mVOList);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch
		
		
		return cnt;
	}//addCoupon
	
	/**
	 * 사용자 아이디 값 리스트로 저장 
	 * @param cVO
	 * @return
	 */
	public List<MemberVO> selectAllMember(){
		List<MemberVO> mVOList = null;
		
		List<String> listId=new ArrayList<String>();
		
		MemberVO memVO = null;
		
		if( memVO.getId() != null ) {
			
			  for(MemberVO mVO : mVOList ){ 
				  listId.add(mVO.getId()); 
			  }//end for
		}//end if
		
		
		
		try {
			//listId값 어떻게 받을지 강구해볼 것
			//mVOList=cDAO.insertCoupon(listId);
		}catch( PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		return mVOList;
	}//insertCoupon
}//class
