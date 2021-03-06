package kr.co.rocketkurly.cust.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CouponDomain;
import kr.co.rocketkurly.admin.domain.PCategoriesDomain;
import kr.co.rocketkurly.admin.domain.QuestionDomain;
import kr.co.rocketkurly.admin.vo.InquiryVO;
import kr.co.rocketkurly.cust.domain.WishDomain;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.MemberVO;
import kr.co.rocketkurly.cust.vo.OrderHistoryVO;
import kr.co.rocketkurly.cust.vo.QuestionVO;
import kr.co.rocketkurly.cust.vo.ReviewVO;
import kr.co.rocketkurly.cust.vo.WishVO;

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
	public List<QuestionDomain> selectQuestion(BoardVO bVO) throws PersistenceException {
		
		List<QuestionDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.cust.mypage.dao.inquiry", bVO);
		
		if( ss != null ) {
			
			ss.close();
			
		}// end if
		
		return list;
		
	}// selectQuestion
	
	/**
	 * 1:1 문의 조회 method
	 * @param id
	 * @return
	 * @throws PersistenceException
	 */
	public QuestionDomain selectMyQuestion(int no) throws PersistenceException {
		
		QuestionDomain list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectOne("kr.co.rocketkurly.cust.mypage.dao.myInquiry",no);
		
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
	public List<CouponDomain> selectCouponBoard(BoardVO bVO) throws PersistenceException {
		
		List<CouponDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.cust.mypage.dao.couponBoard", bVO);
		
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
	
	
	public int wishConfirm(WishVO wVO)throws PersistenceException {
		
		int rowCnt = 0;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		rowCnt = ss.selectOne("kr.co.rocketkurly.cust.mypage.dao.wishConfirm", wVO);
		
		
		if (ss != null) {
			
			ss.close();
			
		} // end if
		
		return rowCnt;
		
	}// wishConfirm
	
	public void insertWish(WishVO wVO)throws PersistenceException {
		
		int cnt=0;
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		cnt=ss.insert("kr.co.rocketkurly.cust.mypage.dao.insertWish", wVO);
		if(cnt==1) {
			ss.commit();
		}
		
		if (ss != null) {
			
			ss.close();
			
		} // end if
		
		
	}// insertWish
	
	public void deleteWish(WishVO wVO)throws PersistenceException {
		
		int cnt=0;
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		cnt=ss.delete("kr.co.rocketkurly.cust.mypage.dao.deleteWish", wVO);
		
		if(cnt==1) {
			ss.commit();
		}
		
		if (ss != null) {
			
			ss.close();
			
		} // end if
		
		
	}// deleteWish
	
	
	public int selectTotalCount() throws PersistenceException{
		int totalCnt = 0;
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		totalCnt=ss.selectOne("kr.co.rocketkurly.cust.mypage.dao.wishCnt");
		if(ss!=null) {
			ss.close();
		}
		
		return totalCnt;
	}
	public List<WishDomain> selectWish(BoardVO bVO) throws PersistenceException{
		List<WishDomain>list=null;
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		
		list=ss.selectList("kr.co.rocketkurly.cust.mypage.dao.selectWish",bVO);
		
		if(ss!=null) {
			ss.close();
		}
		
		return list;
	}
	
	public List<OrderHistoryVO> selectOrderHistory(BoardVO bVO) throws PersistenceException{
		
		List<OrderHistoryVO> list = null;
		
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		
		list=ss.selectList("kr.co.rocketkurly.cust.mypage.dao.orderHistory", bVO);
		
		if(ss!=null) {
			
			ss.close();
		}
		
		return list;
	}
	
	public void writeReview(ReviewVO rVO)throws PersistenceException{
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		ss.selectList("kr.co.rocketkurly.cust.mypage.dao.writeReview",rVO);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
	
	}
	
	public void updateReviewState(ReviewVO rVO)throws PersistenceException{
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		ss.selectList("kr.co.rocketkurly.cust.mypage.dao.updateReviewState",rVO);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
	}
	

	}
	
public List<ReviewVO> selectMyReview(BoardVO bVO) throws PersistenceException{
		
		List<ReviewVO> list = null;
		
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		
		list=ss.selectList("kr.co.rocketkurly.cust.mypage.dao.myReview", bVO);
		
		if(ss!=null) {
			
			ss.close();
		}
		
		return list;
	}
	public int selectOrderCnt(String id) throws PersistenceException{
		
		int cnt=0;
		
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		
		cnt=ss.selectOne("kr.co.rocketkurly.cust.mypage.dao.selectOrderCnt", id);
		
		if(ss!=null) {
			
			ss.close();
		}
		
		return cnt;
	}
	public int selectReviewCnt(String id) throws PersistenceException{
		
		int cnt=0;
		
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		
		cnt=ss.selectOne("kr.co.rocketkurly.cust.mypage.dao.selectReviewCnt", id);
		
		if(ss!=null) {
			
			ss.close();
		}
		
		return cnt;
	}
	public int selectInquiryCnt(String id) throws PersistenceException{
		
		int cnt=0;
		
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		
		cnt=ss.selectOne("kr.co.rocketkurly.cust.mypage.dao.selectInquiryCnt", id);
		
		if(ss!=null) {
			
			ss.close();
		}
		
		return cnt;
	}
	public int selectCouponCnt(String id) throws PersistenceException{
		
		int cnt=0;
		
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		
		cnt=ss.selectOne("kr.co.rocketkurly.cust.mypage.dao.selectCouponCnt", id);
		
		if(ss!=null) {
			
			ss.close();
		}
		
		return cnt;
	}
	
	
}
