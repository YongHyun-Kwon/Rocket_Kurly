package kr.co.rocketkurly.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.dao.QuestionDAO;
import kr.co.rocketkurly.admin.domain.ItemDomain;
import kr.co.rocketkurly.admin.domain.QuestionDomain;
import kr.co.rocketkurly.cust.vo.BoardVO;

@Component
public class QuestionService {

	@Autowired(required = false)
	private QuestionDAO qDAO;
	
	
	public int searchTotalCount() {
		int totalCnt=0;
		try {
		totalCnt=qDAO.selectTotalCount();
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return totalCnt;
	}
	public int searchKeywordCount(BoardVO bVo) {
		int totalCnt=0;
		try {
		totalCnt=qDAO.selectKeywordCount(bVo);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return totalCnt;
	}

	
	public List<QuestionDomain> searchQuestion(BoardVO bVO) {
		List<QuestionDomain> list= null;
		try {
			list=qDAO.selectQuestion(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
	public List<QuestionDomain> searchKeyword(BoardVO bVO) {
		List<QuestionDomain> list= null;
		try {
			list=qDAO.selectKeyword(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
	/**
	 * @param bVO 
	 * @param cntPage 10��
	 * @param total �� ��������
	 */
	public BoardVO calcStartEndPage(BoardVO bVO, int cntPage , int total) {

		bVO.setEndPage(((int)Math.ceil((double)bVO.getCurrentPage() / (double)cntPage)) * cntPage);
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
	 * @return
	 */
	public int numScale() {
		int pageScale=10;
		return pageScale;
	}
	
	
	/**��� �Խù��� �����ֱ� ���� �������� ��(����������)
	 * @param totalCnt
	 * @param pageScale
	 * @return
	 */
	public int pageCnt(int totalCnt,int pageScale) {
		int pageCnt=0;
		pageCnt=(int)Math.ceil((double)totalCnt/pageScale);
		return pageCnt;
	}
	/**
	 * ���۹�ȣ ���ϱ�
	 * @param currentPage
	 * @param pageScale
	 * @return
	 */
	public int StartNum(int currentPage, int pageScale) {
		int startNum=1;
		startNum = currentPage*pageScale-pageScale+1;
		return startNum;
	}
	/**
	 * ����ȣ ���ϱ�
	 * @param startNum
	 * @param pageScale
	 * @return
	 */
	public int endNum(int startNum,int pageScale) {
		int endNum=0;
		endNum=startNum+pageScale-1;
		return endNum;
	}
	/**
	 * ��ȭ�鿡 ������ �������� ��
	 * @return
	 */
	public int pageScale() {
		int pageScale=16;
		return pageScale;
	}
	
	/**
	 * ���� �� ��ȸ
	 * @param name
	 * @return
	 */
	public QuestionDomain selectOneQ(int num) {
		QuestionDomain qDomain = null;
		try {
			qDomain=qDAO.searchOneQ(num);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return qDomain;
	}
	
}
