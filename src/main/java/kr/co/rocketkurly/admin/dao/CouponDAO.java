package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.vo.MemberVO;


@Component
public class CouponDAO {
	
	
	/**
	 * ÄíÆù ¹ßÇà
	 * @param map
	 * @return
	 * @throws PersistenceException
	 */
	public int insertCoupon(List<MemberVO> mVOList) throws PersistenceException {

		
		int cnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		cnt = ss.insert("kr.co.rocketkurly.admin.dao.insertCoupon", mVOList);

		if (cnt == 1) {

			ss.commit();

		} // end if

		if (ss != null) {

			ss.close();

		} // end if

		return cnt;

	}// insertMember


	

}
