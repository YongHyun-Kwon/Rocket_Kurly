package kr.co.rocketkurly.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.rocketkurly.admin.service.AdminMemberService;
import kr.co.rocketkurly.admin.service.ItemService;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.ImgVO;
import kr.co.rocketkurly.cust.vo.ItemVO;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Controller
public class AdminMemberController {
	@Autowired(required = false)
	private AdminMemberService ams;
	
	@RequestMapping(value = "/admin/jsp/customer.do", method = {GET,POST})
	public String allMember(Model model , BoardVO bVO,MemberDomain mVO) {
		
		//전체 레코드의 수
		int totalCnt=ams.searchTotalCount();
		//2. 한화면에 보여줄 게시물의 수
		int pageScale = ams.pageScale();
		//3. 총 페이지 수
		int pageCnt = ams.pageCnt(totalCnt, pageScale);
		//4. 시작번호
		int startNum = ams.StartNum(bVO.getCurrentPage(), pageScale);
		//5. 끝번호
		int endNum = ams.endNum(startNum, pageScale);
		//토탈 스케일
		int totalScale =ams.numScale(); 
		//제일 마지막 페이지 계산
		//시작 , 끝 페이지 계산
		bVO=ams.calcStartEndPage(bVO, totalScale,pageCnt );
		
		System.out.println(totalCnt);
		System.out.println(pageCnt);
		System.out.println(totalCnt);
		System.out.println(startNum);
		System.out.println(endNum);
		System.out.println(totalScale);
		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);
		
		model.addAttribute("memberList",ams.searchMember(bVO));
		model.addAttribute("startPage",bVO.getStartPage());
		model.addAttribute("endPage",bVO.getEndPage());
		model.addAttribute("currentPage",bVO.getCurrentPage());
		model.addAttribute("pageCnt",pageCnt);
		model.addAttribute("memberData",ams.searchMDetail(mVO.getMember_id()));
		model.addAttribute("member_id",mVO.getMember_id());
		ams.modifyStatus(mVO);
		
		
		
		return "admin/jsp/customer";
		
	}// allMember
	
	@RequestMapping(value = "/admin/jsp/customer1.do", method = GET)
	public String filterMember(Model model , BoardVO bVO) {
		
		//전체 레코드의 수
		int totalCnt=ams.searchKeywordCount(bVO);
		//2. 한화면에 보여줄 게시물의 수
		int pageScale = ams.pageScale();
		//3. 총 페이지 수
		int pageCnt = ams.pageCnt(totalCnt, pageScale);
		//4. 시작번호
		int startNum = ams.StartNum(bVO.getCurrentPage(), pageScale);
		//5. 끝번호
		int endNum = ams.endNum(startNum, pageScale);
		//토탈 스케일
		int totalScale =ams.numScale(); 
		//제일 마지막 페이지 계산
		//시작 , 끝 페이지 계산
		bVO=ams.calcStartEndPage(bVO, totalScale,pageCnt);
		
		
		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);
		
		model.addAttribute("memberList",ams.searchKeyword(bVO));
		model.addAttribute("startPage",bVO.getStartPage());
		model.addAttribute("endPage",bVO.getEndPage());
		model.addAttribute("keyword",bVO.getKeyword());
		model.addAttribute("currentPage",bVO.getCurrentPage());
		
		return "admin/jsp/customer";
		
	}// filterMember 
	
	
	
	
}
