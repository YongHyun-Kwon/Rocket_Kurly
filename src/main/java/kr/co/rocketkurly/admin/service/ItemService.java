package kr.co.sist.rocketkurly.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.rocketkurly.admin.dao.ItemDAO;

@Component
public class ItemService {

	@Autowired(required = false)
	private ItemDAO iDAO;
	
}
