package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.BoardVO;


@Component
public class AdminMemberDAO {
	
	public int selectTotalCount() throws PersistenceException{
		int totalCnt = 0;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		//mapper에 parameterType이 없으므로 두번쨰 매개변수가 존재하지 않는다.
		totalCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.memberCnt");
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
		keywordCnt=ss.selectOne("kr.co.rocketkurly.admin.dao.keywordMCnt",bVO);
		//MyBatis handler 종로
		if(ss!=null) {
			ss.close();
		}
		
		return keywordCnt;
	}
	
	public List<MemberDomain> selectMember(BoardVO bVO)throws PersistenceException{
		List<MemberDomain> list = null;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		list=ss.selectList("kr.co.rocketkurly.admin.dao.selectMember",bVO);
		//MyBatis handler 종로
		if(ss!=null) {
			ss.close();
		}
		return list;
	}
	public List<MemberDomain> selectKeyword(BoardVO bVO)throws PersistenceException{
		List<MemberDomain> list = null;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		list=ss.selectList("kr.co.rocketkurly.admin.dao.selectKeywordMember",bVO);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
		return list;
	}
	
	public MemberDomain selectDetail(String member_id)throws PersistenceException{
		MemberDomain member = null;
		//MyBatis handler 얻기
		SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
		//쿼리문실행
		member=ss.selectOne("kr.co.rocketkurly.admin.dao.selectMDetail",member_id);
		//MyBatis handler 종로
		
		if(ss!=null) {
			ss.close();
		}
		return member;
	}
	
public void updateStatus(MemberDomain mVO) throws PersistenceException {
		
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		ss.update("kr.co.rocketkurly.admin.dao.editStatus", mVO);
		ss.commit();
		

		
		
	}// updateStatus

}
