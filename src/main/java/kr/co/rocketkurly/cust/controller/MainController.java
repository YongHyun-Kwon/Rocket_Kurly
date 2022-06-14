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
		
		
		//전체 레코드의 수
				int totalCnt=ms.searchKeywordCount(bVO);
				//2. 한화면에 보여줄 게시물의 수
				int pageScale = ms.pageScale();
				//3. 총 페이지 수
				int pageCnt = ms.pageCnt(totalCnt, pageScale);
				//4. 시작번호
				int startNum = ms.StartNum(bVO.getCurrentPage(), pageScale);
				//5. 끝번호
				int endNum = ms.endNum(startNum, pageScale);
				//토탈 스케일
				int totalScale =ms.numScale(); 
				//제일 마지막 페이지 계산
				//시작 , 끝 페이지 계산
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
