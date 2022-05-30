package kr.co.rocketkurly.cust.vo;

public class BoardVO {

	private int StartNum,endNum;//시작번호 끝번호 현재 페이지 번호
	private int startPage,endPage,currentPage;
	private String keyword;
	
	
	public BoardVO() {
		currentPage=1;
	}
	public int getStartNum() {
		return StartNum;
	}
	public void setStartNum(int startNum) {
		StartNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "BoardVO [StartNum=" + StartNum + ", endNum=" + endNum + ", startPage=" + startPage + ", endPage="
				+ endPage + ", currentPage=" + currentPage + ", keyword=" + keyword + "]";
	}
	

	
	




	
	
}
