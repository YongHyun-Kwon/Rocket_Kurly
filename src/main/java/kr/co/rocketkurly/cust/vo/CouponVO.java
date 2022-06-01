package kr.co.rocketkurly.cust.vo;

import java.sql.Date;

public class CouponVO {

	private String coupon_no,	 member_id, coupon_name;	
	private int discount;
	private Date p_date,	e_date;
	public String getCoupon_no() {
		return coupon_no;
	}
	public void setCoupon_no(String coupon_no) {
		this.coupon_no = coupon_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	public Date getE_date() {
		return e_date;
	}
	public void setE_date(Date e_date) {
		this.e_date = e_date;
	}
	@Override
	public String toString() {
		return "CouponVO [coupon_no=" + coupon_no + ", member_id=" + member_id + ", coupon_name=" + coupon_name
				+ ", discount=" + discount + ", p_date=" + p_date + ", e_date=" + e_date + "]";
	}
	
	
	
}//class
