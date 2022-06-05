package kr.co.rocketkurly.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.dao.ImgDAO;
import kr.co.rocketkurly.admin.dao.ItemDAO;
import kr.co.rocketkurly.admin.domain.ItemDomain;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.CategoriesVO;
import kr.co.rocketkurly.cust.vo.ImgVO;
import kr.co.rocketkurly.cust.vo.ItemVO;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Component
public class ItemService {

	@Autowired(required = false)
	private ItemDAO iDAO;
	
	@Autowired(required = false)
	private ImgDAO imgDAO;
	
	
	public int searchTotalCount() {
		int totalCnt=0;
		try {
		totalCnt=iDAO.selectTotalCount();
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return totalCnt;
	}
	
	public int searchCategoryCount(String c_category_id) {
		int totalCnt=0;
		try {
		totalCnt=iDAO.selectCategoryCount(c_category_id);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return totalCnt;
	}
	
	
	public int searchKeywordCount(BoardVO bVo) {
		int totalCnt=0;
		try {
		totalCnt=iDAO.selectKeywordCount(bVo);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return totalCnt;
	}

	
	public List<ItemDomain> searchItem(BoardVO bVO) {
		List<ItemDomain> list= null;
		try {
			list=iDAO.selectItem(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	public List<ItemDomain> searchUserItem(BoardVO bVO) {
		List<ItemDomain> list= null;
		try {
			list=iDAO.selectUserItem(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
	public List<ItemDomain> searchKeyword(BoardVO bVO) {
		List<ItemDomain> list= null;
		try {
			list=iDAO.selectKeyword(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	public ItemDomain searchDetail(int num) {
		ItemDomain item= null;
		try {
			item=iDAO.selectDetail(num);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return item;
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
		int pageScale=16;
		return pageScale;
	}
	public int userPageScale() {
		int pageScale=12;
		return pageScale;
	}
	
	public void enrollProduct(ItemVO iVO) {
		
		try {

			iDAO.enrollProduct(iVO);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

	}// enrollProduct
	
public void enrollImg(ImgVO imgVO) {
		
		try {

			imgDAO.enrollImg(imgVO);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

	}// enrollImg
	
	
}
