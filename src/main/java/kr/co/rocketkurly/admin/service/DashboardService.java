package kr.co.rocketkurly.admin.service;

import java.text.DecimalFormat;
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
		} // end catch

		return list;

	}// visitCount

	public List<MemberRegCntDomain> memberRegCount() {

		List<MemberRegCntDomain> list = null;

		try {
			list = dashDAO.selectMemberRegCount();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		} // end catch

		return list;

	}// memberRegCount

	public List<OrderCntDomain> orderCount() {

		List<OrderCntDomain> list = null;

		try {
			list = dashDAO.selectOrderCount();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		} // end catch

		return list;

	}// orderCount

	public List<QuestionCntDomain> questionCount() {

		List<QuestionCntDomain> list = null;

		try {
			list = dashDAO.selectQuestionCount();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		} // end catch

		return list;

	}// questionCount

	public List<RevenueDomain> revenue() {

		List<RevenueDomain> list = null;

		try {
			list = dashDAO.selectRevenue();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		} // end catch

		return list;

	}// revenue

	public String salesInquiry(InquiryVO iVO) {

		int revenue = 0;
		String fRevenue = "";

		try {
			revenue = dashDAO.selectSalesInquiry(iVO);
			try {
				fRevenue = format(revenue);
			} catch (NumberFormatException nfe) {
				nfe.printStackTrace();
			}
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		} // end catch

		return fRevenue;

	}// salesInquiry

	public String salesVolumeInquiry(InquiryVO iVO) {

		int salesVolume = 0;
		String fSalesVolume = "";

		try {
			salesVolume = dashDAO.selectSalesVolumeInquiry(iVO);
			try {
				fSalesVolume = format(salesVolume);
			} catch (NumberFormatException nfe) {
				nfe.printStackTrace();
			}
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		} // end catch

		return fSalesVolume;

	}// salesVolumeInquiry

	public List<NoticeDomain> notice() {

		List<NoticeDomain> noticeList = null;

		try {
			noticeList = dashDAO.selectNotice();
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		} // end catch

		return noticeList;

	}// notice

	public int writeNotice(String notice) {

		int cnt = 0;

		try {

			cnt = dashDAO.insertNotice(notice);

		} catch (PersistenceException pe) {

			pe.printStackTrace();
		}

		return cnt;

	}// writeNotice

	/**
	 * 매출액, 주문건수 format 처리
	 * @param number
	 * @return
	 * @throws NumberFormatException
	 */
	public String format(int number) throws NumberFormatException {

		DecimalFormat df = new DecimalFormat("###,###,###,###");

		String fRevenue = df.format(number);

		return fRevenue;

	}// format

}// class
