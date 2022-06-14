package kr.co.rocketkurly.admin.service;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.admin.dao.AdminDAO;
import kr.co.rocketkurly.admin.vo.AdminVO;

@Component
public class AdminService {

	@Autowired(required = false)
	private AdminDAO aDAO;
	
	public String loginCheck(AdminVO aVO) {
		
		String aID = "";
		
		try {
			aID = aDAO.selectLoginCheck(aVO);
		} catch(PersistenceException pe) {
			
			pe.printStackTrace();
			
		}// end catch
		
		if(aID == null) {
			
			aID = "fail";
			
		}
		
		return aID;
		
	}// loginCheck
	
}
