package kr.co.rocketkurly.admin.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.vo.AdminVO;
import kr.co.rocketkurly.cust.dao.MyBatisFramework;

@Component
public class AdminDAO {
	
	public String selectLoginCheck(AdminVO aVO) throws PersistenceException {
		
		String aID = "";
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		aID = ss.selectOne("kr.co.rocketkurly.admin.admin.dao.loginCheck", aVO);
		
		if(ss != null) {
			
			ss.close();
			
		}// end if
		
		return aID;
		
	}// selectLoginCheck

}
