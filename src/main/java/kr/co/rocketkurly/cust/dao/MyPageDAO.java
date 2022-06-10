package kr.co.rocketkurly.cust.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CouponDomain;
import kr.co.rocketkurly.admin.domain.PCategoriesDomain;
import kr.co.rocketkurly.admin.domain.QuestionDomain;
import kr.co.rocketkurly.admin.vo.InquiryVO;
import kr.co.rocketkurly.cust.vo.MemberVO;
import kr.co.rocketkurly.cust.vo.QuestionVO;

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
	
	/**
	 * 회원탈퇴 method
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
	 * 1:1 문의 조회 method
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
	 * 쿠폰 조회 method
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
	
	public int selectQuestionTotal(String id) throws PersistenceException {
		
		int totalCnt = 0;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		totalCnt = ss.selectOne("kr.co.rocketkurly.cust.mypage.dao.inquiryTotal", id);
		
		if( ss!= null ) {
			
			ss.close();
			
		}// end if
		
		return totalCnt;
		
	}// selectQuestionTotal
	
	public int selectCouponTotal(String id) throws PersistenceException {
		
		int totalCnt = 0;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		totalCnt = ss.selectOne("kr.co.rocketkurly.cust.mypage.dao.couponTotal", id);
		
		if( ss!= null ) {
			
			ss.close();
			
		}// end if
		
		return totalCnt;
		
	}// selectQuestionTotal
	
	
	public void writeInquiry(QuestionVO qVO)throws PersistenceException{
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		ss.selectList("kr.co.rocketkurly.cust.mypage.dao.write_inquiry",qVO);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
	
	}
	

}
