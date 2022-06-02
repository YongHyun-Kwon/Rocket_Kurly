package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.MemberRegCntDomain;
import kr.co.rocketkurly.admin.domain.NoticeDomain;
import kr.co.rocketkurly.admin.domain.OrderCntDomain;
import kr.co.rocketkurly.admin.domain.QuestionCntDomain;
import kr.co.rocketkurly.admin.domain.RevenueDomain;
import kr.co.rocketkurly.admin.domain.UserHistoryDomain;
import kr.co.rocketkurly.admin.vo.InquiryVO;
import kr.co.rocketkurly.cust.dao.MyBatisFramework;

@Component
public class DashBoardDAO {

	/**
	 * 방문수 조회 method
	 * @return
	 */
	public List<UserHistoryDomain> selectVisitCount() {
		
		List<UserHistoryDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.admin.dashboard.dao.visitCount");
		
		if (ss != null) {

			ss.close();

		} // end if
		
		return list;
		
	}// selectVisitCount
	
	/**
	 * 가입 회원수 조회 method
	 * @return
	 */
	public List<MemberRegCntDomain> selectMemberRegCount() {
		
		List<MemberRegCntDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.admin.dashboard.dao.memberRegCount");
		
		if (ss != null) {
			
			ss.close();
			
		} // end if
		
		return list;
		
	}// selectMemberRegCount
	
	/**
	 * 주문수량 조회 method
	 * @return
	 */
	public List<OrderCntDomain> selectOrderCount() {
		
		List<OrderCntDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.admin.dashboard.dao.orderCount");
		
		if (ss != null) {
			
			ss.close();
			
		} // end if
		
		return list;
		
	}// selectOrderCount
	
	/**
	 * 문의 개수 조회 method
	 * @return
	 */
	public List<QuestionCntDomain> selectQuestionCount() {
		
		List<QuestionCntDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.admin.dashboard.dao.questionCount");
		
		if (ss != null) {
			
			ss.close();
			
		} // end if
		
		return list;
		
	}// selectQuestionCount
	
	/**
	 * 수익 조회 method
	 * @return
	 */
	public List<RevenueDomain> selectRevenue() {
		
		List<RevenueDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.admin.dashboard.dao.revenue");
		
		if (ss != null) {
			
			ss.close();
			
		} // end if
		
		return list;
		
	}// selectRevenue
	
	public int selectSalesInquiry(InquiryVO iVO) {
		
		int revenu = 0;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		revenu = ss.selectOne("kr.co.rocketkurly.admin.dashboard.dao.salesInquiry", iVO);
		
		if( ss != null ) {
			
			ss.close();
			
		}// end if
		
		return revenu;
		
	}// selectSalesInquiry
	
	public int selectSalesVolumeInquiry(InquiryVO iVO) {
		
		int salesVolume = 0;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		salesVolume = ss.selectOne("kr.co.rocketkurly.admin.dashboard.dao.salesVolume", iVO);
		
		if( ss != null ) {
			
			ss.close();
			
		}// end if
		
		return salesVolume;
		
	}// selectSalesVolumeInquiry
	
	public List<NoticeDomain> selectNotice() {
		
		List<NoticeDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.admin.dashboard.dao.notice");
		
		if( ss != null ) {
			
			ss.close();
			
		}// end if
		
		return list;
		
	}// selectNotice
	
}// class
