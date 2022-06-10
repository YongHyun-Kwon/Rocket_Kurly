package kr.co.rocketkurly.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.dao.CategoriesDAO;
import kr.co.rocketkurly.admin.dao.ImgDAO;
import kr.co.rocketkurly.admin.dao.OrderDAO;
import kr.co.rocketkurly.admin.domain.CCategoriesDomain;
import kr.co.rocketkurly.admin.domain.CategoriesDomain;
import kr.co.rocketkurly.admin.domain.OrderDomain;
import kr.co.rocketkurly.admin.domain.PCategoriesDomain;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.CategoriesVO;
import kr.co.rocketkurly.cust.vo.ImgVO;
import kr.co.rocketkurly.cust.vo.ItemVO;

@Component
public class OrderService {
	
	@Autowired(required = false)
	private OrderDAO oDAO;
	
	

	public List<OrderDomain> selectOrder() {
		List<OrderDomain> list= null;
		try {
			list=oDAO.selectOrder();
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
	public void modifyOrderStat(OrderDomain oVO) {
		
		try {
			oDAO.editOrderStat(oVO);
			
		} catch( PersistenceException pe ) {
			pe.printStackTrace();
		}

	}	
	
	public int searchTotalCount() {
		int totalCnt=0;
		try {
		totalCnt=oDAO.selectTotalCount();
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return totalCnt;
	}
	public int searchKeywordCount(BoardVO bVO) {
		int totalCnt=0;
		try {
		totalCnt=oDAO.selectKeywordCount(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return totalCnt;
	}

	
	public List<OrderDomain> searchMember(BoardVO bVO) {
		List<OrderDomain> list= null;
		try {
			list=oDAO.selectOrder(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
	public List<OrderDomain> searchKeyword(BoardVO bVO) {
		List<OrderDomain> list= null;
		try {
			list=oDAO.selectKeyword(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
	/**
	 * @param bVO 
	 * @param cntPage 10개
	 * @param total 총 페이지수
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
	 * 한화면에 보여줄 페이징수
	 * @return
	 */
	public int numScale() {
		int pageScale=10;
		return pageScale;
	}
	
	
	/**모든 게시물을 보여주기 위한 페이지의 수(총페이지수)
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
	 * 시작번호 구하기
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
	 * 끝번호 구하기
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
	 * 한화면에 보여줄 페이지의 수
	 * @return
	 */
	public int pageScale() {
		int pageScale=10;
		return pageScale;
	}
	
	
	
}
