package kr.co.rocketkurly.cust.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CategoriesDomain;
import kr.co.rocketkurly.admin.domain.ItemDomain;
import kr.co.rocketkurly.cust.dao.MainPageDAO;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.ItemVO;


@Component
public class MainPageService {
	
	@Autowired(required = false)
	private MainPageDAO mDAO;
	
	public List<ItemVO> selectRecommend() {
		
		List<ItemVO> list= null;
		
		try {
			
			list=mDAO.selectRecommend();
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	public List<ItemVO> selectLowestPrice() {
		
		List<ItemVO> list= null;
		
		try {
			
			list=mDAO.selectLowestPrice();
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	
	public List<ItemVO> selectHotItem() {
		
		List<ItemVO> list= null;
		
		try {
			
			list=mDAO.selectHotItem();
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	
	public List<CategoriesDomain> searchP() {
		
		List<CategoriesDomain> list= null;
		
		try {
			
			list=mDAO.selectP();
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	public List<CategoriesDomain> searchC() {
		
		List<CategoriesDomain> list= null;
		
		try {
			
			list=mDAO.selectC();
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	
	public List<ItemVO> searchResult(BoardVO bVO) {
		
		List<ItemVO> list= null;
		
		try {
			
			list=mDAO.searchResult(bVO);
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	
	public int searchKeywordCount(BoardVO bVo) {
		int totalCnt=0;
		try {
		totalCnt=mDAO.selectKeywordCount(bVo);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return totalCnt;
	}
	
	public int pageScale() {
		int pageScale=16;
		return pageScale;
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
	
	public List<ItemDomain> searchKeyword(BoardVO bVO) {
		List<ItemDomain> list= null;
		try {
			list=mDAO.selectKeyword(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}


}
