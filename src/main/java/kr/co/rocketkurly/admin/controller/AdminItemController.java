package kr.co.rocketkurly.admin.controller;

import org.springframework.stereotype.Controller;

import kr.co.sist.rocketkurly.admin.service.ItemService;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class AdminItemController {
	@Autowired(required = false)
	private ItemService is;
	
	
}
