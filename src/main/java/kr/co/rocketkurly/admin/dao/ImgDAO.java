package kr.co.rocketkurly.admin.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.vo.ImgVO;


@Component
public class ImgDAO {
	
	public void enrollImg(ImgVO imgVO)throws PersistenceException{
		//MyBatis handler ���
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//����������
		ss.selectList("kr.co.rocketkurly.img.dao.enrollImg",imgVO);
		//MyBatis handler ����
		
		if(ss!=null) {
			ss.close();
		}
	
	}

}
