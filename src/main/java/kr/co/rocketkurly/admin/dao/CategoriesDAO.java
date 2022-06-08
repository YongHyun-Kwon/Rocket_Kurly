package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CCategoriesDomain;
import kr.co.rocketkurly.admin.domain.CategoriesDomain;
import kr.co.rocketkurly.admin.domain.PCategoriesDomain;
import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.CategoriesVO;
import kr.co.rocketkurly.cust.vo.ItemVO;

@Component
public class CategoriesDAO {
	
	public List<PCategoriesDomain> selectPCategoriesAll()throws PersistenceException{
		List<PCategoriesDomain> list = null;
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		list=ss.selectList("kr.co.rocketkurly.Categorie.dao.selectPCatAll");

		if(ss!= null) {
			ss.close();
		}
		return list;
	}
	
	public List<CCategoriesDomain> selectCCategoriesAll(String p_category_id)throws PersistenceException{
		List<CCategoriesDomain> pcat = null;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		pcat=ss.selectList("kr.co.rocketkurly.Categorie.dao.selectCCatAll",p_category_id);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
		return pcat;
	}
	
	public List<CategoriesVO> selectPCategories()throws PersistenceException{
		List<CategoriesVO> list = null;
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		list=ss.selectList("kr.co.rocketkurly.Categorie.dao.selectPCat");
		
		if(ss!= null) {
			ss.close();
		}
		return list;
	}
	
	public List<CategoriesVO> selectPCategory()throws PersistenceException{
		List<CategoriesVO> list = null;
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		list=ss.selectList("kr.co.rocketkurly.Categorie.dao.selectPCategory");

		if(ss!= null) {
			ss.close();
		}
		return list;
	}
	
	public List<CategoriesVO> selectCCategories()throws PersistenceException{
		List<CategoriesVO> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list=ss.selectList("kr.co.rocketkurly.Categorie.dao.selectCCat");

		if(ss!= null) {
			ss.close();
		}
		return list;
	}
	public List<CategoriesDomain> selectCategory(String p_category_id)throws PersistenceException{
		List<CategoriesDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list=ss.selectList("kr.co.rocketkurly.Categorie.dao.selectCategory",p_category_id);
		
		if(ss!= null) {
			ss.close();
		}
		return list;
	}
	
	public void enrollPCat(PCategoriesDomain pVO)throws PersistenceException{
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		ss.selectList("kr.co.rocketkurly.Categorie.dao.enrollPcat",pVO);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
	
	}
	
	public void enrollCCat(CCategoriesDomain cVO)throws PersistenceException{
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		ss.selectList("kr.co.rocketkurly.Categorie.dao.enrollCcat",cVO);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
		
	}
	
	public void editPCat(PCategoriesDomain pVO)throws PersistenceException{
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		ss.selectList("kr.co.rocketkurly.Categorie.dao.editPcatName",pVO);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
	}
		
		public void editCCat(CCategoriesDomain cVO)throws PersistenceException{
			//MyBatis handler 얻기
			SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
			//쿼리문실행
			ss.selectList("kr.co.rocketkurly.Categorie.dao.editCcatName",cVO);
			//MyBatis handler 종로
			
			if(ss!=null) {
				ss.close();
			}
			
	}

}
