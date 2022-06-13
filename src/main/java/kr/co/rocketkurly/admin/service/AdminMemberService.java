package kr.co.rocketkurly.admin.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.dao.AdminMemberDAO;
import kr.co.rocketkurly.admin.dao.ImgDAO;
import kr.co.rocketkurly.admin.dao.ItemDAO;
import kr.co.rocketkurly.admin.domain.ItemDomain;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.ImgVO;
import kr.co.rocketkurly.cust.vo.ItemVO;
import kr.co.rocketkurly.cust.vo.MemberVO;
import kr.co.rocketkurly.cust.vo.ReviewVO;

@Component
public class AdminMemberService {

	@Autowired(required = false)
	private AdminMemberDAO amDAO;
	
	
	public int searchTotalCount() {
		int totalCnt=0;
		try {
		totalCnt=amDAO.selectTotalCount();
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return totalCnt;
	}
	public int searchKeywordCount(BoardVO bVO) {
		int totalCnt=0;
		try {
		totalCnt=amDAO.selectKeywordCount(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return totalCnt;
	}

	
	public List<MemberDomain> searchMember(BoardVO bVO) {
		List<MemberDomain> list= null;
		try {
			list=amDAO.selectMember(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
	public List<MemberDomain> searchKeyword(BoardVO bVO) {
		List<MemberDomain> list= null;
		try {
			list=amDAO.selectKeyword(bVO);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	public MemberDomain searchMDetail(String member_id) {
		MemberDomain member= null;
		try {
			member=amDAO.selectDetail(member_id);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return member;
	}
	
	
public void modifyStatus(MemberDomain mVO) {
		
		try {
			
			if( mVO.getStatus() != null ) {
				
				amDAO.updateStatus(mVO);

			}// end if
			
			
		} catch( PersistenceException pe ) {
			pe.printStackTrace();
		}
		
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
	int pageScale=10;
	return pageScale;
}


}
