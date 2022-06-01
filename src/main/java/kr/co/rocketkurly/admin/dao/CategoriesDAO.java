package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.vo.CategoriesVO;

@Component
public class CategoriesDAO {
	
	public List<String> selectPCategories()throws PersistenceException{
		List<String> list = null;
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		list=ss.selectList("kr.co.rocketkurly.Categorie.dao.selectPCat");
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

}