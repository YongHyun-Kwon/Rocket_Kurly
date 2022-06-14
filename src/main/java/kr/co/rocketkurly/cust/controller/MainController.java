package kr.co.rocketkurly.cust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.rocketkurly.cust.service.MainPageService;
import kr.co.rocketkurly.cust.vo.BoardVO;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class MainController {
	
	@Autowired(required = false)
	private MainPageService ms;
	
	@RequestMapping(value = "/index.do", method = {RequestMethod.GET, POST})
	public String mainPage(Model model,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
			
		session.setAttribute("cateP",ms.searchP());
		session.setAttribute("cateC",ms.searchC());
		
		model.addAttribute("recommendList",ms.selectRecommend());
		
		model.addAttribute("lowestList",ms.selectLowestPrice());
		
		model.addAttribute("hotList", ms.selectHotItem());
		
		
		return "index";
		
	}// mainPage
	
	@RequestMapping(value = "/search-result.do", method = {RequestMethod.GET, POST})
	public String searchResult(Model model, BoardVO bVO) {
		
		
		//��ü ���ڵ��� ��
				int totalCnt=ms.searchKeywordCount(bVO);
				//2. ��ȭ�鿡 ������ �Խù��� ��
				int pageScale = ms.pageScale();
				//3. �� ������ ��
				int pageCnt = ms.pageCnt(totalCnt, pageScale);
				//4. ���۹�ȣ
				int startNum = ms.StartNum(bVO.getCurrentPage(), pageScale);
				//5. ����ȣ
				int endNum = ms.endNum(startNum, pageScale);
				//��Ż ������
				int totalScale =ms.numScale(); 
				//���� ������ ������ ���
				//���� , �� ������ ���
				bVO=ms.calcStartEndPage(bVO, totalScale,pageCnt);
				
				
				bVO.setStartNum(startNum);
				bVO.setEndNum(endNum);
				
				model.addAttribute("searchList",ms.searchKeyword(bVO));
				model.addAttribute("startPage",bVO.getStartPage());
				model.addAttribute("endPage",bVO.getEndPage());
				model.addAttribute("keyword3",bVO.getKeyword());
				model.addAttribute("currentPage",bVO.getCurrentPage());
		
		
		
		return "search-result";
		
	}// mainPage
	
	


}// class
