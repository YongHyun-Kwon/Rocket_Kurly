package kr.co.rocketkurly.cust.vo;

import java.util.Date;

public class OrderHistoryVO {
	
	String id;				// 사용자 아이디
	int order_no;			// 주문 번호
	int price;				// 상품 가격
	String order_state; 	// 주문 상태
	Date order_date;			// 주문 날짜
	int item_no;				// 상품 번호
	String itemName;		// 상품 이름
	String review_state;	// 리뷰 여부
	int quantity;			// 구매 수량
	
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public String getOrder_state() {
		return order_state;
	}
	public void setOrder_state(String order_state) {
		this.order_state = order_state;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getReview_state() {
		return review_state;
	}
	public void setReview_state(String review_state) {
		this.review_state = review_state;
	}
	public int getItem_no() {
		return item_no;
	}
	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}
	
	@Override
	public String toString() {
		return "OrderHistoryVO [id=" + id + ", order_no=" + order_no + ", price=" + price + ", order_state="
				+ order_state + ", order_date=" + order_date + ", item_no=" + item_no + ", itemName=" + itemName
				+ ", review_state=" + review_state + ", quantity=" + quantity + "]";
	}
	
	
	
	
	
	
}
