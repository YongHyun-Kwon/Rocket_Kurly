package kr.co.rocketkurly.cust.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CouponDomain;
import kr.co.rocketkurly.admin.domain.QuestionDomain;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Component
public class MyPageDAO {
	
	/**
	 * ȸ������ ���� method
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
	
	/**
	 * ȸ��Ż�� method
	 * @param id
	 * @return
	 * @throws PersistenceException
	 */
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
	
	/**
	 * 1:1 ���� ��ȸ method
	 * @param id
	 * @return
	 * @throws PersistenceException
	 */
	public List<QuestionDomain> selectQuestion(String id) throws PersistenceException {
		
		List<QuestionDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.cust.mypage.dao.inquiry", id);
		
		if( ss != null ) {
			
			ss.close();
			
		}// end if
		
		return list;
		
	}// selectQuestion
	
	/**
	 * ���� ��ȸ method
	 * @param id
	 * @return
	 * @throws PersistenceException
	 */
	public List<CouponDomain> selectCoupon(String id) throws PersistenceException {
		
		List<CouponDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.cust.mypage.dao.coupon", id);
		
		if( ss != null ) {
			
			ss.close();
			
		}// end if
		
		return list;
		
	}// selectCoupon

}
