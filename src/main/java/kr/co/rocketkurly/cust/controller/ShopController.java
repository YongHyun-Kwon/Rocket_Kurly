package kr.co.rocketkurly.cust.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.rocketkurly.admin.service.CategoriesSevice;
import kr.co.rocketkurly.admin.service.ItemService;
import kr.co.rocketkurly.cust.vo.BoardVO;
import kr.co.rocketkurly.cust.vo.CategoriesVO;
import kr.co.rocketkurly.cust.vo.ItemVO;
import kr.co.rocketkurly.cust.vo.ReviewVO;

@Controller
public class ShopController {
	
	@Autowired(required = false)
	private ItemService is;
	
	@Autowired(required = false)
	private CategoriesSevice cs;
	
	@RequestMapping(value = "/shop-details.do", method = GET)
	public String shopDetailsPage(Model model, ItemVO iVO, ReviewVO rVO) {
		
		
		model.addAttribute("productData",is.searchDetail(iVO.getItem_no()));
		
		String cate=is.searchCategory(iVO.getItem_no());
		int startNum = is.searchStartCate(cate);
		int endNum = is.searchEndCate(cate);
		
		
		Random ran = new Random();
		List<Integer>list= new ArrayList<Integer>();
		
		for(int i=0;i<4;i++) {
			list.add(ran.nextInt(endNum - startNum + 1) + startNum);
		}
		model.addAttribute("relevantData",is.relevantData(list));
		
		model.addAttribute("reviewList",is.searchReview(iVO.getItem_no()));
		
		
		return "shop-details";
		
	}// shopDetailsPage
	
	@RequestMapping(value = "/shop-grid.do", method = GET)
	public String shopGridPage(Model model,BoardVO bVO,CategoriesVO cVO) {
		//pī�װ��� �޾ƾ���
		//��ü ���ڵ��� ��
		int totalCnt=is.searchCategoryCount(bVO.getCurrent_category());
		//2. ��ȭ�鿡 ������ �Խù��� ��
		int pageScale = is.userPageScale();
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
		
		if(bVO.getEndPage()==-1) {
			bVO.setEndPage(1);
		}
		
		model.addAttribute("currentCategory",bVO.getCurrent_category());
		model.addAttribute("itemList",is.searchUserItem(bVO));
		model.addAttribute("startPage",bVO.getStartPage());
		model.addAttribute("endPage",bVO.getEndPage());
		model.addAttribute("currentPage",bVO.getCurrentPage());
		model.addAttribute("pageCnt",pageCnt);
		model.addAttribute("p_categoryID",cVO.getP_category_id());
		
		model.addAttribute("categoryData",cs.SearchCategory(cVO.getP_category_id()));
		return "shop-grid";
		
	}// shopDetailsPage
	
}// class
