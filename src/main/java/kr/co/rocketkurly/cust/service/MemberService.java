package kr.co.rocketkurly.cust.service;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;import org.springframework.security.web.PortResolverImpl;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.MemberDAO;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Component
public class MemberService {

	@Autowired(required = false)
	private MemberDAO mDAO;
	
	/**
	 * 로그인 확인 method
	 * @param mVO
	 * @return
	 */
	public MemberDomain loginCheck(String id) {
		
		MemberDomain md = null;
		
		try {
			
			md = mDAO.selectLoginCheck(id);
			
		} catch(PersistenceException pe) {
			
			pe.printStackTrace();
			
		}// end catch
		
		return md;
		
	}// loginCheck
	
	public int signUp(MemberVO mVO) {
		
		int cnt = 0;
		
		try {
			
			 cnt = mDAO.insertMember(mVO);
			
		} catch (PersistenceException pe) {
			
			pe.printStackTrace();
			
		}// end catch
		
		return cnt;
		
	}// signUp
	
}
