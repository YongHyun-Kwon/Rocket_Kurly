package kr.co.rocketkurly.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.dao.DashBoardDAO;
import kr.co.rocketkurly.admin.domain.MemberRegCntDomain;
import kr.co.rocketkurly.admin.domain.NoticeDomain;
import kr.co.rocketkurly.admin.domain.OrderCntDomain;
import kr.co.rocketkurly.admin.domain.QuestionCntDomain;
import kr.co.rocketkurly.admin.domain.RevenueDomain;
import kr.co.rocketkurly.admin.domain.UserHistoryDomain;
import kr.co.rocketkurly.admin.vo.InquiryVO;

@Component
public class DashboardService {

	@Autowired(required = false)
	private DashBoardDAO dashDAO;
	
	public List<UserHistoryDomain> visitCount() {
		
		List<UserHistoryDomain> list = null;
		
		try {
			list = dashDAO.selectVisitCount();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
		
		return list;
		
	}// visitCount
	
	public List<MemberRegCntDomain> memberRegCount() {
		
		List<MemberRegCntDomain> list = null;
		
		try {
			list = dashDAO.selectMemberRegCount();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
		
		return list;
		
	}// memberRegCount
	
	public List<OrderCntDomain> orderCount() {
		
		List<OrderCntDomain> list = null;
		
		try {
			list = dashDAO.selectOrderCount();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
		
		return list;
		
	}// orderCount
	
	public List<QuestionCntDomain> questionCount() {
		
		List<QuestionCntDomain> list = null;
		
		try {
			list = dashDAO.selectQuestionCount();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
		
		return list;
		
	}// questionCount
	
	public List<RevenueDomain> revenue() {
		
		List<RevenueDomain> list = null;
		
		try {
			list = dashDAO.selectRevenue();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
		
		return list;
		
	}// revenue
	
	public int salesInquiry(InquiryVO iVO) {
		
		int revenue = 0;
		
		try {
			revenue = dashDAO.selectSalesInquiry(iVO);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
		
		return revenue;
		
	}// salesInquiry
	
	public int salesVolumeInquiry(InquiryVO iVO) {
		
		int salesVolume = 0;
		
		try {
			salesVolume = dashDAO.selectSalesVolumeInquiry(iVO);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
		
		return salesVolume;
		
	}// salesVolumeInquiry
	
	public List<NoticeDomain> notice() {
		
		List<NoticeDomain> noticeList = null;
		
		try {
			noticeList = dashDAO.selectNotice();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}// end catch
		
		return noticeList;
		
	}// notice
	
}// class
