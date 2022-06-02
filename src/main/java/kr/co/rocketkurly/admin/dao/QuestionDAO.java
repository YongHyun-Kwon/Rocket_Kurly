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
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		//mapper에 parameterType이 없으므로 두번쨰 매개변수가 존재하지 않는다.
		totalCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.questionCnt");
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
		keywordCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.keywordCnt2",bVO);
		//MyBatis handler 종로
		if(ss!=null) {
			ss.close();
		}
		
		return keywordCnt;
	}
	
	public List<QuestionDomain> selectQuestion(BoardVO bVO)throws PersistenceException{
		List<QuestionDomain> list = null;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		list=ss.selectList("kr.co.rocketkurly.admin.dao.selectQuestion",bVO);
		//MyBatis handler 종로
		if(ss!=null) {
			ss.close();
		}
		return list;
	}
	public List<QuestionDomain> selectKeyword(BoardVO bVO)throws PersistenceException{
		List<QuestionDomain> list = null;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		list=ss.selectList("kr.co.rocketkurly.admin.dao.selectKeywordQuestion",bVO);
		//MyBatis handler 종료
		
		if(ss!=null) {
			ss.close();
		}
		return list;
	}
	
	/**
	 * 상품 상세 조회
	 * @param name
	 * @return
	 * @throws PersistenceException
	 */
	public QuestionDomain searchOneQ(int num)throws PersistenceException{
		QuestionDomain qDomain = null;
		
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		
		qDomain=ss.selectOne("kr.co.rocketkurly.admin.dao.selectOneQuestion",num);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
		return qDomain;
	}

}
