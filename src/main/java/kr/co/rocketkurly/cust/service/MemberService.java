package kr.co.rocketkurly.cust.service;

import javax.inject.Inject;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.PortResolverImpl;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.MemberDAO;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Component
public class MemberService {

	@Autowired(required = false)
	private MemberDAO mDAO;

	@Inject
	BCryptPasswordEncoder pwEncoder;

	/**
	 * 로그인 확인 method
	 * 
	 * @param mVO
	 * @return
	 */
	public MemberDomain loginCheck(MemberVO mVO) {

		MemberDomain md = null;
		boolean pwFlag = false;

		try {

			md = mDAO.selectLoginCheck(mVO.getId());
			pwFlag = pwCheck(mVO.getPw(), md.getPw());

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		if (!pwFlag) {
			md = null;
		}

		return md;

	}// loginCheck


	public int signUp(MemberVO mVO) {

		int cnt = 0;

		try {
			
			String inputPass = mVO.getPw();
			String pass = pwEncoder.encode(inputPass);
			
			mVO.setPw(pass);
			
			cnt = mDAO.insertMember(mVO);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		return cnt;

	}// signUp
	
	public String idCheck(String id) {
		
		String checkID = "";
		 
		try {
			
			checkID = mDAO.selectIdCheck(id);
			
			
		} catch (PersistenceException pe) {
			
			pe.printStackTrace();
			
		}// end catch
		
		JSONObject jsonObj = new JSONObject();
		
		jsonObj.put("checkID", checkID);
		
		checkID = jsonObj.toJSONString();
		
		
		return checkID;
	}

	public boolean pwCheck(String inputPw, String custPw) {
		
		boolean pwFlag = pwEncoder.matches(inputPw, custPw);
		
		return pwFlag;
		
	}// pwCheck
	
}
