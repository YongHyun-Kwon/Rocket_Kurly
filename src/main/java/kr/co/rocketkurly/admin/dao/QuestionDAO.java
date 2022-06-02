package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.ItemDomain;
import kr.co.rocketkurly.admin.domain.QuestionDomain;
import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.vo.BoardVO;


@Component
public class QuestionDAO {
	
	public int selectTotalCount() throws PersistenceException{
		int totalCnt = 0;
		//MyBatis handler ���
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//����������
		//mapper�� parameterType�� �����Ƿ� �ι��� �Ű������� �������� �ʴ´�.
		totalCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.questionCnt");
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
		keywordCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.keywordCnt2",bVO);
		//MyBatis handler ����
		if(ss!=null) {
			ss.close();
		}
		
		return keywordCnt;
	}
	
	public List<QuestionDomain> selectQuestion(BoardVO bVO)throws PersistenceException{
		List<QuestionDomain> list = null;
		//MyBatis handler ���
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//����������
		list=ss.selectList("kr.co.rocketkurly.admin.dao.selectQuestion",bVO);
		//MyBatis handler ����
		if(ss!=null) {
			ss.close();
		}
		return list;
	}
	public List<QuestionDomain> selectKeyword(BoardVO bVO)throws PersistenceException{
		List<QuestionDomain> list = null;
		//MyBatis handler ���
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//����������
		list=ss.selectList("kr.co.rocketkurly.admin.dao.selectKeywordQuestion",bVO);
		//MyBatis handler ����
		
		if(ss!=null) {
			ss.close();
		}
		return list;
	}
	
	/**
	 * ��ǰ �� ��ȸ
	 * @param name
	 * @return
	 * @throws PersistenceException
	 */
	public QuestionDomain searchOneQ(int num)throws PersistenceException{
		QuestionDomain qDomain = null;
		
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		
		qDomain=ss.selectOne("kr.co.rocketkurly.admin.dao.selectOneQuestion",num);
		//MyBatis handler ����
		
		if(ss!=null) {
			ss.close();
		}
		return qDomain;
	}

}
