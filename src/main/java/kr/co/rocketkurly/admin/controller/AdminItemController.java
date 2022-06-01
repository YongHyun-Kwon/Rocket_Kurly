package kr.co.rocketkurly.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.rocketkurly.admin.service.ItemService;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.ImgVO;
import kr.co.rocketkurly.cust.vo.ItemVO;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Controller
public class AdminItemController {
	@Autowired(required = false)
	private ItemService is;
	
	@RequestMapping(value = "/admin/jsp/all_products.do", method = GET)
	public String allProducts(Model model , BoardVO bVO) {
		
		//전체 레코드의 수
		int totalCnt=is.searchTotalCount();
		//2. 한화면에 보여줄 게시물의 수
		int pageScale = is.pageScale();
		//3. 총 페이지 수
		int pageCnt = is.pageCnt(totalCnt, pageScale)-1;
		//4. 시작번호
		int startNum = is.StartNum(bVO.getCurrentPage(), pageScale);
		//5. 끝번호
		int endNum = is.endNum(startNum, pageScale);
		//토탈 스케일
		int totalScale =is.numScale(); 
		//제일 마지막 페이지 계산
		//시작 , 끝 페이지 계산
		bVO=is.calcStartEndPage(bVO, totalScale,pageCnt );
		
		
		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);
		
		model.addAttribute("itemList",is.searchItem(bVO));
		model.addAttribute("startPage",bVO.getStartPage());
		model.addAttribute("endPage",bVO.getEndPage());
		model.addAttribute("currentPage",bVO.getCurrentPage());
		model.addAttribute("pageCnt",pageCnt);
		
		return "admin/jsp/all_products";
		
	}// allProducts
	
	@RequestMapping(value = "/admin/jsp/all_products2.do", method = GET)
	public String filterProducts(Model model , BoardVO bVO) {
		
		//전체 레코드의 수
		int totalCnt=is.searchKeywordCount(bVO);
		//2. 한화면에 보여줄 게시물의 수
		int pageScale = is.pageScale();
		//3. 총 페이지 수
		int pageCnt = is.pageCnt(totalCnt, pageScale);
		//4. 시작번호
		int startNum = is.StartNum(bVO.getCurrentPage(), pageScale);
		//5. 끝번호
		int endNum = is.endNum(startNum, pageScale);
		//토탈 스케일
		int totalScale =is.numScale(); 
		//제일 마지막 페이지 계산
		//시작 , 끝 페이지 계산
		bVO=is.calcStartEndPage(bVO, totalScale,pageCnt);
		
		
		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);
		
		model.addAttribute("itemList",is.searchKeyword(bVO));
		model.addAttribute("startPage",bVO.getStartPage());
		model.addAttribute("endPage",bVO.getEndPage());
		model.addAttribute("keyword",bVO.getKeyword());
		model.addAttribute("currentPage",bVO.getCurrentPage());
		
		return "admin/jsp/all_products";
		
	}// allProducts
	
	@RequestMapping(value = "/admin/jsp/enrollProcess.do", method = { GET, POST })
	public String enrollProcess(@ModelAttribute("admin") ItemVO iVO, @ModelAttribute("img") ImgVO imgVO) {


		is.enrollProduct(iVO);
		//is.enrollImg(imgVO);


		return "redirect:/admin/jsp/all_products.do";

	}
	
	@RequestMapping(value = "/admin/jsp/product_detail.do", method = GET)
	public String detail(Model model , ItemVO iVO) {
		model.addAttribute("productData",is.searchDetail(iVO.getName()));
		return "admin/jsp/product_detail";
		
	}// allProducts
	
	
}
