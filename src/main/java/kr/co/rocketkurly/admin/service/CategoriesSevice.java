package kr.co.rocketkurly.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.dao.CategoriesDAO;
import kr.co.rocketkurly.cust.vo.CategoriesVO;

@Component
public class CategoriesSevice {
	
	@Autowired(required = false)
	private CategoriesDAO cDAO;

	public List<String> selectPCategories() {
		List<String> list= null;
		try {
			list=cDAO.selectPCategories();
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	public List<CategoriesVO> selectCCategories() {
		List<CategoriesVO> list= null;
		try {
			list=cDAO.selectCCategories();
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
}
