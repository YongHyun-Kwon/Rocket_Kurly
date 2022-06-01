package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.ItemDomain;
import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.ItemVO;


@Component
public class ItemDAO {
	
	public int selectTotalCount() throws PersistenceException{
		int totalCnt = 0;
		//MyBatis handler ���
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//����������
		//mapper�� parameterType�� �����Ƿ� �ι��� �Ű������� �������� �ʴ´�.
		totalCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.itemCnt");
		//MyBatis handler ����
		if(ss!=null) {
			ss.close();
		}
		
		return totalCnt;
	}
	public int selectKeywordCount(BoardVO bVO) throws PersistenceException{
		int keywordCnt = 0;
		//MyBatis handler ���
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//����������
		//mapper�� parameterType�� �����Ƿ� �ι��� �Ű������� �������� �ʴ´�.
		keywordCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.keywordCnt",bVO);
		//MyBatis handler ����
		if(ss!=null) {
			ss.close();
		}
		
		return keywordCnt;
	}
	
	public List<ItemDomain> selectItem(BoardVO bVO)throws PersistenceException{
		List<ItemDomain> list = null;
		//MyBatis handler ���
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//����������
		list=ss.selectList("kr.co.rocketkurly.admin.dao.selectItem",bVO);
		//MyBatis handler ����
		if(ss!=null) {
			ss.close();
		}
		return list;
	}
	public List<ItemDomain> selectKeyword(BoardVO bVO)throws PersistenceException{
		List<ItemDomain> list = null;
		//MyBatis handler ���
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//����������
		list=ss.selectList("kr.co.rocketkurly.admin.dao.selectKeywordItem",bVO);
		//MyBatis handler ����
		
		if(ss!=null) {
			ss.close();
		}
		return list;
	}
	
	public void enrollProduct(ItemVO iVO)throws PersistenceException{
		//MyBatis handler ���
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//����������
		ss.selectList("kr.co.rocketkurly.admin.dao.enroll",iVO);
		//MyBatis handler ����
		
		if(ss!=null) {
			ss.close();
		}
	
	}
	
	public ItemDomain selectDetail(String name)throws PersistenceException{
		ItemDomain item = null;
		//MyBatis handler ���
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//����������
		item=ss.selectOne("kr.co.rocketkurly.admin.dao.selectDetail",name);
		//MyBatis handler ����
		
		if(ss!=null) {
			ss.close();
		}
		return item;
	}

}
