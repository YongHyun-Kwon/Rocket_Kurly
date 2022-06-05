package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CategoriesDomain;
import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.vo.CategoriesVO;

@Component
public class CategoriesDAO {
	
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

}
