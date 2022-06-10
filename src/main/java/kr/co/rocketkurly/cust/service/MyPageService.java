package kr.co.rocketkurly.cust.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CouponDomain;
import kr.co.rocketkurly.admin.domain.PCategoriesDomain;
import kr.co.rocketkurly.admin.domain.QuestionDomain;
import kr.co.rocketkurly.admin.vo.InquiryVO;
import kr.co.rocketkurly.cust.dao.MyPageDAO;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.MemberVO;
import kr.co.rocketkurly.cust.vo.QuestionVO;

@Component
public class MyPageService {

	@Autowired(required = false)
	private MyPageDAO myDAO;

	@Inject
	BCryptPasswordEncoder pwEncoder;

	/**
	 * ���� ���� ���� service method
	 * 
	 * @param mVO
	 * @return
	 */
	public int modifyMember(MemberVO mVO) {

		int cnt = 0;

		try {

			String inputPass = mVO.getPw();
			String pass = pwEncoder.encode(inputPass);

			mVO.setPw(pass);

			cnt = myDAO.updateMember(mVO);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		return cnt;

	}// modifyMember

	/**
	 * ȸ��Ż�� Service method
	 * 
	 * @param id
	 * @return
	 */
	public String resignMember(String id) {

		int cnt = 0;
		String msg = "fail";

		try {

			cnt = myDAO.updateResignMember(id);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		if (cnt == 1) {

			msg = "success";

		}

		return msg;

	}// modifyMember

	/**
	 * 1:1 ���� ��ȸ Service method
	 * 
	 * @param id
	 * @return
	 */
	public List<QuestionDomain> inquiry(String id) {

		List<QuestionDomain> list = null;

		try {
			list = myDAO.selectQuestion(id);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		} // end catch

		return list;

	}// inquiry

	/**
	 * ������ȸ Service method
	 * 
	 * @param id
	 * @return
	 */
	public List<CouponDomain> coupon(String id) {

		List<CouponDomain> list = null;

		try {
			list = myDAO.selectCoupon(id);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		} // end catch

		return list;

	}// coupon

	public int questionTotal(String id) {

		int totalCnt = 0;

		try {

			totalCnt = myDAO.selectQuestionTotal(id);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		return totalCnt;
	}// questionTotal
	
	public int couponTotal(String id) {
		
		int totalCnt = 0;
		
		try {
			
			totalCnt = myDAO.selectCouponTotal(id);
			
		} catch (PersistenceException pe) {
			
			pe.printStackTrace();
			
		} // end catch
		
		return totalCnt;
		
	}// couponTotal

	/**
	 * @param bVO
	 * @param cntPage 8��
	 * @param total   �� ��������
	 */
	public BoardVO calcStartEndPage(BoardVO bVO, int cntPage, int total) {

		bVO.setEndPage(((int) Math.ceil((double) bVO.getCurrentPage() / (double) cntPage)) * cntPage);
		if (total < bVO.getEndPage()) {
			bVO.setEndPage(total);
		}
		bVO.setStartPage(bVO.getEndPage() - cntPage + 1);
		if (bVO.getStartPage() < 1) {
			bVO.setStartPage(1);
		}

		return bVO;

	}

	/**
	 * ��ȭ�鿡 ������ ����¡��
	 * 
	 * @return
	 */
	public int numScale() {
		int pageScale = 8;
		return pageScale;
	}

	/**
	 * ��� �Խù��� �����ֱ� ���� �������� ��(����������)
	 * 
	 * @param totalCnt
	 * @param pageScale
	 * @return
	 */
	public int pageCnt(int totalCnt, int pageScale) {
		int pageCnt = 0;
		pageCnt = (int) Math.ceil((double) totalCnt / pageScale);
		return pageCnt;
	}

	/**
	 * ���۹�ȣ ���ϱ�
	 * 
	 * @param currentPage
	 * @param pageScale
	 * @return
	 */
	public int StartNum(int currentPage, int pageScale) {
		int startNum = 1;
		startNum = currentPage * pageScale - pageScale + 1;
		return startNum;
	}

	/**
	 * ����ȣ ���ϱ�
	 * 
	 * @param startNum
	 * @param pageScale
	 * @return
	 */
	public int endNum(int startNum, int pageScale) {
		int endNum = 0;
		endNum = startNum + pageScale - 1;
		return endNum;
	}

	/**
	 * ��ȭ�鿡 ������ �������� ��
	 * 
	 * @return
	 */
	public int pageScale() {
		int pageScale = 10;
		return pageScale;
	}
	
public void writeInquiry(QuestionVO qVO) {
		
		try {

			myDAO.writeInquiry(qVO);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

	}// enrollProduct

}
