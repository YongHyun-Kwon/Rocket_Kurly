package kr.co.rocketkurly.cust.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.domain.CategoriesDomain;
import kr.co.rocketkurly.cust.dao.MainPageDAO;
import kr.co.rocketkurly.cust.vo.ItemVO;


@Component
public class MainPageService {
	
	@Autowired(required = false)
	private MainPageDAO mDAO;
	
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
	
	public List<ItemVO> selectHotItem() {
		
		List<ItemVO> list= null;
		
		try {
			
			list=mDAO.selectHotItem();
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	
	public List<CategoriesDomain> searchP() {
		
		List<CategoriesDomain> list= null;
		
		try {
			
			list=mDAO.selectP();
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	public List<CategoriesDomain> searchC() {
		
		List<CategoriesDomain> list= null;
		
		try {
			
			list=mDAO.selectC();
			
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		
		return list;
	}
	


}
