package kr.co.rocketkurly.cust.vo;

public class CartVO {
	
	private int cart_no,quantity,item_no;
	private String member_id;
	
	public int getCart_no() {
		return cart_no;
	}
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getItem_no() {
		return item_no;
	}
	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	@Override
	public String toString() {
		return "CartVO [cart_no=" + cart_no + ", quantity=" + quantity + ", item_no=" + item_no + ", member_id="
				+ member_id + "]";
	}
	
	
	
	

}
