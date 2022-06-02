package kr.co.rocketkurly.admin.controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.rocketkurly.admin.service.DashboardService;
import kr.co.rocketkurly.admin.vo.InquiryVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class DashboardController {
	
	@Autowired(required = false)
	DashboardService dashService;
	
	@ResponseBody
	@RequestMapping(value = "/admin/jsp/revenue.do", method = GET)
	public String revenueProcess(InquiryVO iVO) {
		
		String revenue = Integer.toString(dashService.salesInquiry(iVO));
		
		return revenue;
		
	}// revenueProcess
	
	@ResponseBody
	@RequestMapping(value = "/admin/jsp/salesvolume.do", method = GET)
	public String salesVolumeProcess(InquiryVO iVO) {
		
		String salesVolume = Integer.toString(dashService.salesVolumeInquiry(iVO));
		
		return salesVolume;
		
	}// salesVolumeProcess
	

}
