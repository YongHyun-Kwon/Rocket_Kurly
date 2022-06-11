package kr.co.rocketkurly.cust.vo;

import java.util.Date;

public class OrderHistoryVO {
	
	String id;				// ����� ���̵�
	int order_no;			// �ֹ� ��ȣ
	int price;				// ��ǰ ����
	String order_state; 	// �ֹ� ����
	Date order_date;			// �ֹ� ��¥
	int item_no;				// ��ǰ ��ȣ
	String itemName;		// ��ǰ �̸�
	String review_state;	// ���� ����
	int quantity;			// ���� ����
	
	
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
