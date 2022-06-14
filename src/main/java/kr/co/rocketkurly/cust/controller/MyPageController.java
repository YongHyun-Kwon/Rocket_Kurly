package kr.co.rocketkurly.cust.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.rocketkurly.admin.domain.CouponDomain;
import kr.co.rocketkurly.admin.domain.QuestionDomain;
import kr.co.rocketkurly.admin.service.ItemService;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.service.MemberService;
import kr.co.rocketkurly.cust.service.MyPageService;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.MemberVO;
import kr.co.rocketkurly.cust.vo.QuestionVO;
import kr.co.rocketkurly.cust.vo.ReviewVO;
import kr.co.rocketkurly.cust.vo.WishVO;

@Controller
public class MyPageController {

	@Autowired(required = false)
	private MyPageService mps;

	@Autowired(required = false)
	private MemberService ms;
	
	@Autowired(required = false)
	private ItemService is;
	

	@RequestMapping(value = "/mypage.do", method = { GET, POST })
	public String myPage(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();

		model.addAttribute("nickname", session.getAttribute("nickname"));

		return "mypage";

	}// myPage

	@RequestMapping(value = "/pwcheck.do", method = POST)
	public ModelAndView pwCheckProcess(String pass, HttpServletRequest request) {

		HttpSession session = request.getSession();

		ModelAndView mav = new ModelAndView();

		String userID = (String) session.getAttribute("custID");

		MemberVO mVO = new MemberVO();

		mVO.setId(userID);
		mVO.setPw(pass);

		MemberDomain md = ms.loginCheck(mVO);

		if (md == null) {

			mav.addObject("msg", "fail");
			mav.setViewName("mypage");

		} else {

			mav.setViewName("redirect:setting.do");

		} // end else

		return mav;
	}

	@RequestMapping(value = "/setting.do", method = { GET, POST })
	public String settingPage(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();

		MemberDomain md = ms.memberInfo((String) session.getAttribute("custID"));

		model.addAttribute("custData", md);

		return "setting";

	}// settingPage

	@RequestMapping(value = "/modifymember.do", method = { GET, POST })
	public String settingProcessPage(MemberVO mVO, HttpServletRequest request) {

		HttpSession session = request.getSession();

		mVO.setId((String) session.getAttribute("custID"));

		int cnt = mps.modifyMember(mVO);

		if (cnt == 0) {
			return "redirect:index.do";
		}

		return "redirect:setting.do";

	}

	@ResponseBody
	@RequestMapping(value = "/resignmember.do", method = { GET, POST })
	public String resignMemberProcess(HttpServletRequest request) {

		HttpSession session = request.getSession();

		String msg = mps.resignMember((String) session.getAttribute("custID"));

		return msg;

	}// pwFindProcess

	@RequestMapping(value = "/orderhistory.do", method = { GET, POST })
	public String orderhistoryPage(Model model,BoardVO bVO ,HttpServletRequest request) {

		
		HttpSession session = request.getSession();

		bVO.setMember_id((String) session.getAttribute("custID"));
		
		//전체 레코드의 수
		int totalCnt=mps.searchOrderCnt(bVO.getMember_id());
		//2. 한화면에 보여줄 게시물의 수
		int pageScale = mps.myPageScale();
		//3. 총 페이지 수
		int pageCnt = is.pageCnt(totalCnt, pageScale)-1;
		//4. 시작번호
		int startNum = is.StartNum(bVO.getCurrentPage(), pageScale);
		//5. 끝번호
		int endNum = is.endNum(startNum, pageScale);
		//토탈 스케일
		int totalScale =is.numScale(); 

		bVO=is.calcStartEndPage(bVO, totalScale,pageCnt );
		
		
		if(bVO.getEndPage()==-1) {
			bVO.setEndPage(1);
		}
		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);

		model.addAttribute("historyList", mps.searchOrderhistory(bVO));
		model.addAttribute("startPage",bVO.getStartPage());
		model.addAttribute("endPage",bVO.getEndPage());
		model.addAttribute("currentPage",bVO.getCurrentPage());
		model.addAttribute("pageCnt",pageCnt);
		
		
		
			
		return "orderhistory";

	}// orderhistoryPage

	@RequestMapping(value = "/review.do", method = { GET, POST })
	public String reviewPage(Model model,BoardVO bVO ,HttpServletRequest request) {


		HttpSession session = request.getSession();

		
		bVO.setMember_id((String) session.getAttribute("custID"));
		
		//전체 레코드의 수
		int totalCnt=mps.searchReviewCnt(bVO.getMember_id());
		//2. 한화면에 보여줄 게시물의 수
		int pageScale = mps.myPageScale();
		//3. 총 페이지 수
		int pageCnt = is.pageCnt(totalCnt, pageScale)-1;
		//4. 시작번호
		int startNum = is.StartNum(bVO.getCurrentPage(), pageScale);
		//5. 끝번호
		int endNum = is.endNum(startNum, pageScale);
		//토탈 스케일
		int totalScale =is.numScale(); 

		bVO=is.calcStartEndPage(bVO, totalScale,pageCnt );
		
		
		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);
		if(bVO.getEndPage()==-1) {
			bVO.setEndPage(1);
		}

		model.addAttribute("startPage",bVO.getStartPage());
		model.addAttribute("endPage",bVO.getEndPage());
		model.addAttribute("currentPage",bVO.getCurrentPage());
		model.addAttribute("pageCnt",pageCnt);
		
		
		model.addAttribute("reviewList", mps.selectMyReview(bVO));
		
			
		return "review";

	}// review

	@RequestMapping(value = "/write-review.do", method = { GET, POST })
	public String writeReview(Model model, ReviewVO rVO) {
		
		model.addAttribute("review",rVO);	
		return "write-review";
		
	}// review
	
	@RequestMapping(value = "/write-review1.do", method = { GET, POST })
	public String writeReviewPage(ReviewVO rVO,HttpServletRequest request) {

		HttpSession session =  request.getSession();
		
		rVO.setMember_id((String)session.getAttribute("custID"));
		mps.writeReview(rVO);
		mps.updateReviewState(rVO);
		
		return "redirect:review.do";

	}// review
	


	@RequestMapping(value = "/inquiry.do", method = { GET, POST })
	public String inquiryPage(Model model,BoardVO bVO,HttpServletRequest request) {

		HttpSession session = request.getSession();
		
		
		bVO.setMember_id((String) session.getAttribute("custID"));
		
		//전체 레코드의 수
		int totalCnt=mps.searchInquiryCnt(bVO.getMember_id());
		//2. 한화면에 보여줄 게시물의 수
		int pageScale = mps.myPageScale();
		//3. 총 페이지 수
		int pageCnt = is.pageCnt(totalCnt, pageScale)-1;
		//4. 시작번호
		int startNum = is.StartNum(bVO.getCurrentPage(), pageScale);
		//5. 끝번호
		int endNum = is.endNum(startNum, pageScale);
		//토탈 스케일
		int totalScale =is.numScale(); 

		bVO=is.calcStartEndPage(bVO, totalScale,pageCnt );
		
		
		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);
		
		if(bVO.getEndPage()==-1) {
			bVO.setEndPage(1);
		}

		model.addAttribute("startPage",bVO.getStartPage());
		model.addAttribute("endPage",bVO.getEndPage());
		model.addAttribute("currentPage",bVO.getCurrentPage());
		model.addAttribute("pageCnt",pageCnt);
		

		model.addAttribute("inquiryList", mps.inquiry(bVO));

		return "inquiry";

	}// inquiry

	@RequestMapping(value = "/inquiry-detail.do", method = { GET, POST })
	public String inquiryDetailPage(Model model, QuestionVO qVO) {
		model.addAttribute("inq",mps.myInquiry(qVO.getQuestion_no()));
		
		return "inquiry-detail";

	}// inquiry

	@RequestMapping(value = "/coupon.do", method = { GET, POST })
	public String couponPage(Model model,BoardVO bVO,HttpServletRequest request) {

		HttpSession session = request.getSession();

		bVO.setMember_id((String) session.getAttribute("custID"));
		
		//전체 레코드의 수
		int totalCnt=mps.searchCouponCnt(bVO.getMember_id());
		//2. 한화면에 보여줄 게시물의 수
		int pageScale = mps.myPageScale();
		//3. 총 페이지 수
		int pageCnt = is.pageCnt(totalCnt, pageScale)-1;
		//4. 시작번호
		int startNum = is.StartNum(bVO.getCurrentPage(), pageScale);
		//5. 끝번호
		int endNum = is.endNum(startNum, pageScale);
		//토탈 스케일
		int totalScale =is.numScale(); 

		bVO=is.calcStartEndPage(bVO, totalScale,pageCnt );
		
		
		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);
		
		if(bVO.getEndPage()==-1) {
			bVO.setEndPage(1);
		}

		model.addAttribute("startPage",bVO.getStartPage());
		model.addAttribute("endPage",bVO.getEndPage());
		model.addAttribute("currentPage",bVO.getCurrentPage());
		model.addAttribute("pageCnt",pageCnt);

		model.addAttribute("couponList", mps.SearchCouponBoard(bVO));

		return "coupon";

	}// inquiry

	
	@RequestMapping(value = "/write-inquiry.do", method = { GET, POST })
	public String writeInquiryPage() {
		
		
		return "write-inquiry";
		
	}// inquiry
	
	@RequestMapping(value = "/write-inquiry1.do", method = { GET, POST })
	public String writeInquiry(QuestionVO qVO,HttpServletRequest request) {
		
		HttpSession session =  request.getSession();
		
		qVO.setMember_id((String)session.getAttribute("custID"));
		
		mps.writeInquiry(qVO);
		return "redirect:inquiry.do";
		
	}// inquiry
	
	
	@ResponseBody
	@RequestMapping(value = "/addwish.do", method = { GET, POST } , produces = "application/json;charset=UTF-8")
	public String addWish(WishVO wVO) {
		String msg = "";
		msg=mps.addWish(wVO);
		
		return msg;
		
	}// addWish
	
	@RequestMapping(value = "/favorite.do", method = { GET, POST })
	public String favoritePage(HttpServletRequest request,Model model, BoardVO bVO) {
		
		
		HttpSession session =  request.getSession();
		
		bVO.setMember_id((String)session.getAttribute("custID"));
		
		//전체 레코드의 수
		int totalCnt=mps.totalCount();
		//2. 한화면에 보여줄 게시물의 수
		int pageScale = is.userPageScale();
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
		bVO=is.calcStartEndPage(bVO, totalScale,pageCnt );
		
		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);
		
		if(bVO.getEndPage()==-1) {
			bVO.setEndPage(1);
		}
		model.addAttribute("wishList",mps.searchWish(bVO));
		model.addAttribute("startPage",bVO.getStartPage());
		model.addAttribute("endPage",bVO.getEndPage());
		model.addAttribute("currentPage",bVO.getCurrentPage());
		model.addAttribute("pageCnt",pageCnt);
		
		
		return "favorite";

	}// favorite
	
	
	

}
