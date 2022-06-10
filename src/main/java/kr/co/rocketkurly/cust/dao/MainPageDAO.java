package kr.co.rocketkurly.cust.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

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
	


}
