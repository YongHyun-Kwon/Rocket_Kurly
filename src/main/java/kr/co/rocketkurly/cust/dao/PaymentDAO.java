package kr.co.rocketkurly.cust.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.vo.OrderItemTempVO;
import kr.co.rocketkurly.cust.vo.OrderingVO;

@Component
public class PaymentDAO {

	public int insertOrdering(OrderingVO oVO) throws PersistenceException {

		int cnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		cnt = ss.insert("kr.co.rocketkurly.cust.payment.dao.ordering", oVO);

		if (cnt == 1) {

			ss.commit();

		} // end if

		if (ss != null) {

			ss.close();

		} // end if

		return cnt;

	}// insertOrdering

	public int selectOrderNo() throws PersistenceException {

		int orderNo = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		orderNo = ss.selectOne("kr.co.rocketkurly.cust.payment.dao.orderNo");

		if (orderNo == 1) {

			ss.commit();

		} // end if

		if (ss != null) {

			ss.close();

		} // end if

		return orderNo;

	}// selectOrderNo

	public int insertOrderItem(List<OrderItemTempVO> orderItemList) throws PersistenceException {

		int cnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		cnt = ss.insert("kr.co.rocketkurly.cust.payment.dao.orderItem", orderItemList);

		if (cnt != 0) {

			ss.commit();

		} // end if

		if (ss != null) {

			ss.close();

		} // end if

		return cnt;

	} // insertOrderItem

	public int insertRecipient(OrderingVO oVO) throws PersistenceException {

		int cnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		cnt = ss.insert("kr.co.rocketkurly.cust.payment.dao.recipient", oVO);

		if (cnt == 1) {

			ss.commit();

		} // end if

		if (ss != null) {

			ss.close();

		} // end if

		return cnt;

	}// insertRecipient

	public int deleteCoupon(String couponNo) throws PersistenceException {

		int cnt = 0;

		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();

		cnt = ss.delete("kr.co.rocketkurly.cust.payment.dao.usingCoupon", couponNo);

		if (cnt == 1) {

			ss.commit();

		} // end if

		if (ss != null) {

			ss.close();

		} // end if
		return cnt;

	}// deleteCoupon

}
