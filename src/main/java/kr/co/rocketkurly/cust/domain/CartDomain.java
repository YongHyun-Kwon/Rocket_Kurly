package kr.co.rocketkurly.cust.domain;

public class CartDomain {
	
	private int item_no,price,quantity,cart_no,priceSum;
	private String name,main_img,member_id;
	public int getItem_no() {
		return item_no;
	}
	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getCart_no() {
		return cart_no;
	}
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}
	public int getPriceSum() {
		return priceSum;
	}
	public void setPriceSum(int priceSum) {
		this.priceSum = priceSum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMain_img() {
		return main_img;
	}
	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	@Override
	public String toString() {
		return "CartDomain [item_no=" + item_no + ", price=" + price + ", quantity=" + quantity + ", cart_no=" + cart_no
				+ ", priceSum=" + priceSum + ", name=" + name + ", main_img=" + main_img + ", member_id=" + member_id
				+ "]";
	}

	
	
	
	
	
}
