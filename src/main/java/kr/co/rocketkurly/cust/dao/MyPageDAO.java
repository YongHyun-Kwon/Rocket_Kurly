package kr.co.rocketkurly.cust.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.vo.MemberVO;

@Component
public class MyPageDAO {
	
	/**
	 * 회원정보 변경 method
	 * @param mVO
	 * @return
	 * @throws PersistenceException
	 */
	public int updateMember(MemberVO mVO) throws PersistenceException {

		int rowCnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		rowCnt = ss.update("kr.co.rocketkurly.cust.mypage.dao.modifyMember", mVO);

		if (rowCnt == 1) {

			ss.commit();

		} // end if

		if (ss != null) {

			ss.close();

		} // end if

		return rowCnt;

	}// updateMember
	
	public int updateResignMember(String id)throws PersistenceException {
		
		int rowCnt = 0;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		rowCnt = ss.update("kr.co.rocketkurly.cust.mypage.dao.resignMember", id);
		
		if (rowCnt == 1) {
			
			ss.commit();
			
		} // end if
		
		if (ss != null) {
			
			ss.close();
			
		} // end if
		
		return rowCnt;
		
	}// updateMember

}
