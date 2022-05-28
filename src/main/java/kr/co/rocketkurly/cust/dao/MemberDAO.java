package kr.co.rocketkurly.cust.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Component
public class MemberDAO {

	/**
	 * 로그인 확인 method
	 * 
	 * @param id
	 * @return
	 * @throws PersistenceException
	 */
	public MemberDomain selectLoginCheck(String id) throws PersistenceException {

		MemberDomain md = null;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		md = ss.selectOne("kr.co.rocketkurly.cust.member.dao.loginCheck", id);

		if (ss != null) {

			ss.close();

		} // end if

		return md;

	}// selectLoginCheck

	/**
	 * 회원가잆 method
	 * 
	 * @param mVO
	 * @return
	 * @throws PersistenceException
	 */
	public int insertMember(MemberVO mVO) throws PersistenceException {

		int cnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		cnt = ss.insert("kr.co.rocketkurly.cust.member.dao.register", mVO);

		if (cnt == 1) {

			ss.commit();

		} // end if

		if (ss != null) {

			ss.close();

		} // end if

		return cnt;

	}// insertMember

	public int updateMember(MemberVO mVO) throws PersistenceException {

		int rowCnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		rowCnt = ss.insert("kr.co.rocketkurly.cust.member.dao.modifyMember", mVO);

		if (rowCnt == 1) {

			ss.commit();

		} // end if

		if (ss != null) {

			ss.close();

		} // end if

		return rowCnt;

	}// updateMember

	public String selectIdCheck(String id) throws PersistenceException {

		String checkID = "";

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		checkID = ss.selectOne("kr.co.rocketkurly.cust.member.dao.idCheck", id);

		if (ss != null) {

			ss.close();

		} // end if

		return checkID;

	}// idCheck

}// class
