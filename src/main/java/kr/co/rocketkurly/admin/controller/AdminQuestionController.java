package kr.co.rocketkurly.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.rocketkurly.admin.service.QuestionService;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.QuestionVO;

@Controller
public class AdminQuestionController {
	@Autowired(required = false)
	private QuestionService qs;
	

	@RequestMapping(value = "/admin/jsp/inquiry.do", method = GET)
	public String allQuestions(Model model, BoardVO bVO) {

		// ��ü ���ڵ��� ��
		int totalCnt = qs.searchTotalCount();
		// 2. ��ȭ�鿡 ������ �Խù��� ��
		int pageScale = qs.pageScale();
		// 3. �� ������ ��
		int pageCnt = qs.pageCnt(totalCnt, pageScale) - 1;
		// 4. ���۹�ȣ
		int startNum = qs.StartNum(bVO.getCurrentPage(), pageScale);
		// 5. ����ȣ
		int endNum = qs.endNum(startNum, pageScale);
		// ��Ż ������
		int totalScale = qs.numScale();
		// ���� ������ ������ ���
		// ���� , �� ������ ���
		bVO = qs.calcStartEndPage(bVO, totalScale, pageCnt);

		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);

		model.addAttribute("questionList", qs.searchQuestion(bVO));
		model.addAttribute("startPage", bVO.getStartPage());
		model.addAttribute("endPage", bVO.getEndPage());
		model.addAttribute("currentPage", bVO.getCurrentPage());
		model.addAttribute("pageCnt", pageCnt);

		return "admin/jsp/inquiry";

	}// allQuestions

	@RequestMapping(value = "/admin/jsp/inquiry2.do", method = GET)
	public String filterQuestions(Model model, BoardVO bVO) {

		// ��ü ���ڵ��� ��
		int totalCnt = qs.searchKeywordCount(bVO);
		// 2. ��ȭ�鿡 ������ �Խù��� ��
		int pageScale = qs.pageScale();
		// 3. �� ������ ��
		int pageCnt = qs.pageCnt(totalCnt, pageScale);
		// 4. ���۹�ȣ
		int startNum = qs.StartNum(bVO.getCurrentPage(), pageScale);
		// 5. ����ȣ
		int endNum = qs.endNum(startNum, pageScale);
		// ��Ż ������
		int totalScale = qs.numScale();
		// ���� ������ ������ ���
		// ���� , �� ������ ���
		bVO = qs.calcStartEndPage(bVO, totalScale, pageCnt);

		bVO.setStartNum(startNum);
		bVO.setEndNum(endNum);

		model.addAttribute("questionList", qs.searchQuestion(bVO));
		model.addAttribute("startPage", bVO.getStartPage());
		model.addAttribute("endPage", bVO.getEndPage());
		model.addAttribute("keyword2", bVO.getKeyword());
		model.addAttribute("currentPage", bVO.getCurrentPage());

		return "admin/jsp/inquiry";

		}//filterQuestions
	
		@RequestMapping(value = "/admin/jsp/inquiry3.do", method = GET)
		public String selectOneQuestion(Model model , QuestionVO qVO) {
			model.addAttribute("questionData",qs.selectOneQ(qVO.getQuestion_no()));
			
			return "admin/jsp/inquiry";
			
		}// selectOneQuestion
		
	}// class

