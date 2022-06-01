package kr.co.rocketkurly.admin.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.vo.ImgVO;


@Component
public class ImgDAO {
	
	public void enrollImg(ImgVO imgVO)throws PersistenceException{
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		ss.selectList("kr.co.rocketkurly.img.dao.enrollImg",imgVO);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
	
	}

}
