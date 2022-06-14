package kr.co.rocketkurly.cust.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CategoriesDomain;
import kr.co.rocketkurly.admin.domain.ItemDomain;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.ItemVO;

@Component
public class MainPageDAO {
	
	public List<ItemVO> selectRecommend() throws PersistenceException{
		
		List<ItemVO> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.cust.mainpage.dao.recommend");
		
		if(ss!= null) {
			ss.close();
		}
		
		return list;
	}
	
	public List<ItemVO> selectLowestPrice() throws PersistenceException{
		List<ItemVO> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.cust.mainpage.dao.lowestPrice");

		if(ss!= null) {
			ss.close();
		}
		
		return list;
	}
	
	public List<ItemVO> selectHotItem() throws PersistenceException{
		List<ItemVO> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.cust.mainpage.dao.hotItem");
		
		if(ss!= null) {
			ss.close();
		}
		
		return list;
	}
	public List<CategoriesDomain> selectP() throws PersistenceException{
		List<CategoriesDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.cust.mainpage.dao.selectP");
		if(ss!= null) {
			ss.close();
		}
		
		return list;
	}
	public List<CategoriesDomain> selectC() throws PersistenceException{
		List<CategoriesDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.cust.mainpage.dao.selectC");
		
		if(ss!= null) {
			ss.close();
		}
		
		return list;
	}
	
	public List<ItemVO> searchResult(BoardVO bVO) throws PersistenceException{
		List<ItemVO> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.cust.mainpage.dao.searchResult",bVO);
		
		if(ss!= null) {
			ss.close();
		}
		
		return list;
	}
	
	public int selectKeywordCount(BoardVO bVO) throws PersistenceException{
		int keywordCnt = 0;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		//mapper에 parameterType이 없으므로 두번쨰 매개변수가 존재하지 않는다.
		keywordCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.keywordCnt",bVO);
		//MyBatis handler 종로
		if(ss!=null) {
			ss.close();
		}
		
		return keywordCnt;
	}
	
	public List<ItemDomain> selectKeyword(BoardVO bVO)throws PersistenceException{
		List<ItemDomain> list = null;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		list=ss.selectList("kr.co.rocketkurly.admin.dao.selectKeywordItem",bVO);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
		return list;
	}


}
