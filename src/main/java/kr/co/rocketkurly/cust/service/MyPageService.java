package kr.co.rocketkurly.cust.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CouponDomain;
import kr.co.rocketkurly.admin.domain.QuestionDomain;
import kr.co.rocketkurly.cust.dao.MyPageDAO;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Component
public class MyPageService {
	
	@Autowired(required = false)
	private MyPageDAO myDAO;

	@Inject
	BCryptPasswordEncoder pwEncoder;
	
	/**
	 * 유저 정보 변경 service method
	 * 
	 * @param mVO
	 * @return
	 */
	public int modifyMember(MemberVO mVO) {

		int cnt = 0;

		try {

			String inputPass = mVO.getPw();
			String pass = pwEncoder.encode(inputPass);

			mVO.setPw(pass);

			cnt = myDAO.updateMember(mVO);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		return cnt;

	}// modifyMember
	
	/**
	 * 회원탈퇴 Service method
	 * @param id
	 * @return
	 */
	public String resignMember(String id) {
		
		int cnt = 0;
		String msg = "fail";
		
		try {
			
			cnt = myDAO.updateResignMember(id);
			
		} catch (PersistenceException pe) {
			
			pe.printStackTrace();
			
		} // end catch
		
		if(cnt == 1) {
			
			msg = "success";
			
		}
		
		return msg;
		
	}// modifyMember
	
	/**
	 * 1:1 문의 조회 Service method
	 * @param id
	 * @return
	 */
	public List<QuestionDomain> inquiry(String id) {
		
		List<QuestionDomain> list = null;
		
		try {
			list = myDAO.selectQuestion(id);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
		
		return list;
		
	}// inquiry
	
	/**
	 * 쿠폰조회 Service method
	 * @param id
	 * @return
	 */
	public List<CouponDomain> coupon(String id) {
		
		List<CouponDomain> list = null;
		
		try {
			list = myDAO.selectCoupon(id);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
			
		
		return list;
		
	}// coupon

}
