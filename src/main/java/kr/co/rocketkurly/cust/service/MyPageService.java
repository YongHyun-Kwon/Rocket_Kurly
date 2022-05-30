package kr.co.rocketkurly.cust.service;

import javax.inject.Inject;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

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

}
