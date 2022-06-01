package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.MemberRegCntDomain;
import kr.co.rocketkurly.admin.domain.OrderCntDomain;
import kr.co.rocketkurly.admin.domain.QuestionCntDomain;
import kr.co.rocketkurly.admin.domain.RevenueDomain;
import kr.co.rocketkurly.admin.domain.UserHistoryDomain;
import kr.co.rocketkurly.cust.dao.MyBatisFramework;

@Component
public class DashBoardDAO {

	/**
	 * �湮�� ��ȸ method
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
	 * ���� ȸ���� ��ȸ method
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
	 * �ֹ����� ��ȸ method
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
	 * ���� ���� ��ȸ method
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
	 * ���� ��ȸ method
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
	
}// class
