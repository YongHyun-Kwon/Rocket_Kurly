package kr.co.rocketkurly.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.rocketkurly.admin.service.ItemService;
import kr.co.rocketkurly.cust.vo.BoardVO;

@Controller
public class AdminItemController {
	@Autowired(required = false)
	private ItemService is;
	
	@RequestMapping(value = "/admin/jsp/all_products.do", method = GET)
	public String allProducts(Model model , BoardVO bVO) {
		
		//��ü ���ڵ��� ��
		int totalCnt=is.searchTotalCount();
		//2. ��ȭ�鿡 ������ �Խù��� ��
		int pageScale = is.pageScale();
		//3. �� ������ ��
		int pageCnt = is.pageCnt(totalCnt, pageScale)-1;
		//4. ���۹�ȣ
		int startNum = is.StartNum(bVO.getCurrentPage(), pageScale);
		//5. ����ȣ
		int endNum = is.endNum(startNum, pageScale);
		//��Ż ������
		int totalScale =is.numScale(); 
		//���� ������ ������ ���
		//���� , �� ������ ���
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
		
		//��ü ���ڵ��� ��
		int totalCnt=is.searchKeywordCount(bVO);
		//2. ��ȭ�鿡 ������ �Խù��� ��
		int pageScale = is.pageScale();
		//3. �� ������ ��
		int pageCnt = is.pageCnt(totalCnt, pageScale);
		//4. ���۹�ȣ
		int startNum = is.StartNum(bVO.getCurrentPage(), pageScale);
		//5. ����ȣ
		int endNum = is.endNum(startNum, pageScale);
		//��Ż ������
		int totalScale =is.numScale(); 
		//���� ������ ������ ���
		//���� , �� ������ ���
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
	
	
}
