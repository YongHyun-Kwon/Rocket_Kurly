package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.ItemDomain;
import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.CategoriesVO;
import kr.co.rocketkurly.cust.vo.ItemVO;


@Component
public class ItemDAO {
	
	public int selectTotalCount() throws PersistenceException{
		int totalCnt = 0;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		//mapper에 parameterType이 없으므로 두번쨰 매개변수가 존재하지 않는다.
		totalCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.itemCnt");
		//MyBatis handler 종로
		if(ss!=null) {
			ss.close();
		}
		
		return totalCnt;
	}
	public int selectCategoryCount(String c_category_id) throws PersistenceException{
		int totalCnt = 0;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		//mapper에 parameterType이 없으므로 두번쨰 매개변수가 존재하지 않는다.
		if(c_category_id.contains("0")) {
			c_category_id = c_category_id.substring(0,c_category_id.length()-1);
			totalCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.categoryFullCnt",c_category_id);
			
		}else {
			totalCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.categoryCnt",c_category_id);
			
		}
		//MyBatis handler 종로
		if(ss!=null) {
			ss.close();
		}
		
		return totalCnt;
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
	
	public List<ItemDomain> selectItem(BoardVO bVO)throws PersistenceException{
		List<ItemDomain> list = null;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		list=ss.selectList("kr.co.rocketkurly.admin.dao.selectItem",bVO);
		//MyBatis handler 종로
		if(ss!=null) {
			ss.close();
		}
		return list;
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
	public List<ItemDomain> selectUserItem(BoardVO bVO)throws PersistenceException{
		List<ItemDomain> list = null;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행		
		if(bVO.getCurrent_category().contains("0")) {
			bVO.setCurrent_category(bVO.getCurrent_category().substring(0,bVO.getCurrent_category().length()-1)); 
			list=ss.selectList("kr.co.rocketkurly.admin.dao.CategoryFullItem",bVO);
			
		}else {
			list=ss.selectList("kr.co.rocketkurly.admin.dao.CategoryItem",bVO);
			
		}
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
		return list;
	}
	
	public void enrollProduct(ItemVO iVO)throws PersistenceException{
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		ss.selectList("kr.co.rocketkurly.admin.dao.enroll",iVO);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
	
	}
	
	public ItemDomain selectDetail(int num)throws PersistenceException{
		ItemDomain item = null;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		item=ss.selectOne("kr.co.rocketkurly.admin.dao.selectDetail",num);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
		return item;
	}

}
