package kr.co.rocketkurly.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CCategoriesDomain;
import kr.co.rocketkurly.admin.domain.CategoriesDomain;
import kr.co.rocketkurly.admin.domain.OrderDomain;
import kr.co.rocketkurly.admin.domain.PCategoriesDomain;
import kr.co.rocketkurly.cust.dao.MyBatisFramework;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.CategoriesVO;
import kr.co.rocketkurly.cust.vo.ItemVO;

@Component
public class OrderDAO {
	
	public List<OrderDomain> selectOrder()throws PersistenceException{
		List<OrderDomain> list = null;
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		list=ss.selectList("kr.co.rocketkurly.Order.dao.selectOrder");

		if(ss!= null) {
			ss.close();
		}
		return list;
	}
	

		public void editOrderStat(OrderDomain oVO)throws PersistenceException{
			//MyBatis handler ���
			SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
			//����������
			ss.selectList("kr.co.rocketkurly.Order.dao.editOrderStat",oVO);
			if(ss!=null) {
				ss.close();
			}
			
	}
		
		
		public int selectTotalCount() throws PersistenceException{
			int totalCnt = 0;
			//MyBatis handler ���
			SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
			//����������
			//mapper�� parameterType�� �����Ƿ� �ι��� �Ű������� �������� �ʴ´�.
			totalCnt=ss.selectOne("kr.co.rocketkurly.Order.dao.orderCnt");
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
			keywordCnt=ss.selectOne("kr.co.rocketkurly.Order.dao.keywordOCnt",bVO);
			//MyBatis handler ����
			if(ss!=null) {
				ss.close();
			}
			
			return keywordCnt;
		}
		
		public List<OrderDomain> selectOrder(BoardVO bVO)throws PersistenceException{
			List<OrderDomain> list = null;
			//MyBatis handler ���
			SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
			//����������
			list=ss.selectList("kr.co.rocketkurly.Order.dao.selectOrder",bVO);
			//MyBatis handler ����
			if(ss!=null) {
				ss.close();
			}
			return list;
		}
		public List<OrderDomain> selectKeyword(BoardVO bVO)throws PersistenceException{
			List<OrderDomain> list = null;
			//MyBatis handler ���
			SqlSession ss= MyBatisFramework.getInstance().getMyBatisHandler();
			//����������
			list=ss.selectList("kr.co.rocketkurly.Order.dao.selectKeywordOrder",bVO);
			//MyBatis handler ����
			
			if(ss!=null) {
				ss.close();
			}
			return list;
		}	
		

}
