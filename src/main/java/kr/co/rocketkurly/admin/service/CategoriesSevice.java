package kr.co.rocketkurly.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.dao.CategoriesDAO;
import kr.co.rocketkurly.admin.dao.ImgDAO;
import kr.co.rocketkurly.admin.domain.CCategoriesDomain;
import kr.co.rocketkurly.admin.domain.CategoriesDomain;
import kr.co.rocketkurly.admin.domain.PCategoriesDomain;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.CategoriesVO;
import kr.co.rocketkurly.cust.vo.ImgVO;
import kr.co.rocketkurly.cust.vo.ItemVO;

@Component
public class CategoriesSevice {
	
	@Autowired(required = false)
	private CategoriesDAO cDAO;
	
	

	public List<CategoriesVO> selectPCategories() {
		List<CategoriesVO> list= null;
		try {
			list=cDAO.selectPCategories();
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
	public List<PCategoriesDomain> selectPCategoriesAll() {
		List<PCategoriesDomain> list= null;
		try {
			list=cDAO.selectPCategoriesAll();
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
	public List<CCategoriesDomain> selectCCategoriesAll(String p_category_id) {
		List<CCategoriesDomain> pcat= null;
		try {
			pcat=cDAO.selectCCategoriesAll(p_category_id);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return pcat;
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
	public List<CategoriesDomain> SearchCategory(String p_category_id) {
		List<CategoriesDomain> list= null;
		try {
			list=cDAO.selectCategory(p_category_id);
		}catch (PersistenceException e) {
			
			e.printStackTrace();			
		}
		return list;
	}
	
public void enrollPCat(PCategoriesDomain pVO) {
		
		try {

			cDAO.enrollPCat(pVO);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

	}// enrollProduct
	
public void enrollCCat(CCategoriesDomain cVO) {
	
	try {
		
		cDAO.enrollCCat(cVO);
		
	} catch (PersistenceException pe) {
		
		pe.printStackTrace();
		
	} // end catch
	
}// enrollProduct

public void modifyPcat(PCategoriesDomain pVO) {
	
	try {
	
		cDAO.editPCat(pVO);
		
	} catch( PersistenceException pe ) {
		pe.printStackTrace();
	}
	
}

public void modifyCcat(CCategoriesDomain cVO) {
	
	try {
		
		cDAO.editCCat(cVO);
		
	} catch( PersistenceException pe ) {
		pe.printStackTrace();
	}
	
}

	
}
