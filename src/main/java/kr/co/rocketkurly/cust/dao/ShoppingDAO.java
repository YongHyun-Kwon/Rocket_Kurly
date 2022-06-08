package kr.co.rocketkurly.cust.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.vo.CartVO;

@Component
public class ShoppingDAO {
	
	public int confirm(String id) throws PersistenceException {
		int rowCnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		rowCnt = ss.selectOne("kr.co.rocketkurly.cust.Shopping.dao.confirm",id);

		if (ss != null) {

			ss.close();

		} // end if
		
		return rowCnt;
	}
	
	
	/**
	 * 새로운 장바구니 생성
	 * @param cVO
	 * @return
	 * @throws PersistenceException
	 */
	public int insertNewCart(CartVO cVO) throws PersistenceException {

		int rowCnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		rowCnt = ss.insert("kr.co.rocketkurly.cust.Shopping.dao.insertNewCart", cVO);
		if (rowCnt == 1) {

			ss.commit();

		} // end if

		if (ss != null) {

			ss.close();

		} // end if

		return rowCnt;

	}// insertNewCart
	
	
	/**
	 * 장바구니가 이미 있다면 장바구니를 가져온다.
	 * @param member_id
	 * @return
	 * @throws PersistenceException
	 */
	
	public int selectCartBody(String member_id) throws PersistenceException {

		int cnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		cnt = ss.selectOne("kr.co.rocketkurly.cust.Shopping.dao.selectCartBody", member_id);

		if (ss != null) {

			ss.close();

		} // end if

		return cnt;

	}// insertNewCart
	
	

	public int insertOneCart(CartVO cVO) throws PersistenceException {
		
		int cnt = 0;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		cnt = ss.insert("kr.co.rocketkurly.cust.Shopping.dao.insertOneCart", cVO);
		
		if (cnt == 1) {
			
			ss.commit();
			
		} // end if
		
		if (ss != null) {
			
			ss.close();
			
		} // end if
		
		return cnt;
		
	}// insertNewCart
	
	
}
