package kr.co.rocketkurly.cust.vo;

import java.sql.Date;

public class WishVO {
	private int wish_no,item_no;
	private String member_id;
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
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Date getWish_date() {
		return wish_date;
	}
	public void setWish_date(Date wish_date) {
		this.wish_date = wish_date;
	}
	@Override
	public String toString() {
		return "WishVO [wish_no=" + wish_no + ", item_no=" + item_no + ", member_id=" + member_id + ", wish_date="
				+ wish_date + "]";
	}
	
	
	

}
