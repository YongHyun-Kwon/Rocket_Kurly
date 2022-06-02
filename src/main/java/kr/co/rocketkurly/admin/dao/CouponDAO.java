package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.CouponVO;
import kr.co.rocketkurly.cust.vo.MemberVO;


@Component
public class CouponDAO {
	
	
	/**
	 * 쿠폰 발행
	 * @param map
	 * @return
	 * @throws PersistenceException
	 */
	public void insertCoupon(CouponVO cVO) throws PersistenceException {

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		ss.selectList("kr.co.rocketkurly.admin.dao.insertCoupon", cVO);
		
	
		if (ss != null) {

			ss.close();

		} // end if
		
		

	}// insertCoupon
	
	/**
	 * 모든 회원의 아이디 조회
	 * @return
	 */
	public List<String> selectAllMember(){
		List<String> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("kr.co.rocketkurly.admin.dao.selectAllmember");
		
		if(ss!=null) {
			ss.close();
		}
		
		return list;
	}//selectAllMember

	/**
	 * 쿠폰 번호의 최대값 조회
	 * @return
	 */
	public int selectMaxCouponNo(){
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		int maxSeq = ss.selectOne("kr.co.rocketkurly.admin.dao.selectMaxCouponNo");
		
		if(ss!=null) {
			ss.close();
		}
		
		return maxSeq;
	}//selectMaxCouponNo
	

}//class
