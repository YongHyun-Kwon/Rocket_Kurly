package kr.co.rocketkurly.cust.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.mainPageDAO;
import kr.co.rocketkurly.cust.vo.ItemVO;


@Component
public class mainPageService {
	
	@Autowired(required = false)
	private mainPageDAO mDAO;
	
	public List<ItemVO> selectRecommend() {
		
		List<ItemVO> list= null;
		
		try {
			
			list=mDAO.selectRecommend();
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	public List<ItemVO> selectLowestPrice() {
		
		List<ItemVO> list= null;
		
		try {
			
			list=mDAO.selectLowestPrice();
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	

}
