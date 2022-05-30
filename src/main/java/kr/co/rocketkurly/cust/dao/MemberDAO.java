package kr.co.rocketkurly.cust.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Component
public class MemberDAO {

	/**
	 * �α��� Ȯ�� method
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
	 * ���� �湮��� ��� method
	 * @param id
	 * @return
	 * @throws PersistenceException
	 */
	public int insertUserHistory(String id) throws PersistenceException {
		
		int cnt = 0;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		cnt = ss.insert("kr.co.rocketkurly.cust.member.dao.addUserHistory", id);
		
		if( cnt == 1 ) {
			
			ss.commit();
			
		}// end if

		if (ss != null) {

			ss.close();

		} // end if
		
		return cnt;
		
	}// insertUserHistory
	
	/**
	 * ���̵� ã�� method
	 * @param mVO
	 * @return
	 * @throws PersistenceException
	 */
	public String selectFindID(MemberVO mVO) throws PersistenceException {
		
		String id = "";
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		id = ss.selectOne("kr.co.rocketkurly.cust.member.dao.findID", mVO);
		
		if( ss != null ) {
			
			ss.close();
			
		}// end if
		
		return id;
		
	}// selectID
	
	/**
	 * ȸ�� ��й�ȣ ��ȸ method
	 * @param mVO
	 * @return
	 * @throws PersistenceException
	 */
	public String selectFindPW(MemberVO mVO) throws PersistenceException {
		
		String id = "";
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		id = ss.selectOne("kr.co.rocketkurly.cust.member.dao.findPW", mVO);
		
		if( ss != null ) {
			
			ss.close();
			
		}// end if
		
		return id;
		
	}// selectPW
	
	/**
	 * ȸ�� �ӽú�й�ȣ ���� method
	 * @param mVO
	 * @throws PersistenceException
	 */
	public void updatePW(MemberVO mVO) throws PersistenceException {
		
		int cnt = 0;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		cnt = ss.update("kr.co.rocketkurly.cust.member.dao.modifyPW", mVO);
		
		if (cnt == 1) {

			ss.commit();

		} // end if
		
		if( ss != null ) {
			
			ss.close();
			
		}// end if
		
	}// updatePW
	
	
	/**
	 * ȸ������ method
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



	/**
	 * ID �ߺ� üũ method
	 * @param id
	 * @return
	 * @throws PersistenceException
	 */
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
