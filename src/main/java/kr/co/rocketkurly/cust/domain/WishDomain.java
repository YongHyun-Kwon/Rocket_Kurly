package kr.co.rocketkurly.cust.domain;

import java.sql.Date;

public class WishDomain {

	private int wish_no,item_no,price;
	private String member_id,name,main_img;
	private Date wish_date;
	
	
	public int getWish_no() {
		return wish_no;
	}
	public void setWish_no(int wish_no) {
		this.wish_no = wish_no;
	}
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
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
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
	public Date getWish_date() {
		return wish_date;
	}
	public void setWish_date(Date wish_date) {
		this.wish_date = wish_date;
	}
	@Override
	public String toString() {
		return "WishDomain [wish_no=" + wish_no + ", item_no=" + item_no + ", price=" + price + ", member_id="
				+ member_id + ", name=" + name + ", main_img=" + main_img + ", wish_date=" + wish_date + "]";
	}

	
	
	

}
