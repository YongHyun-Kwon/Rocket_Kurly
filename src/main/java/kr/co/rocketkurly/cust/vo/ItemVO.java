package kr.co.rocketkurly.cust.vo;

import java.sql.Date;

public class ItemVO {
	
	private  String name ,expired ,detail,main_img,c_category_id;
	private int item_no,price,final_price,sales;	
	private Date reg_dt	,mod_dt;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getExpired() {
		return expired;
	}
	public void setExpired(String expired) {
		this.expired = expired;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getMain_img() {
		return main_img;
	}
	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}
	public String getC_category_id() {
		return c_category_id;
	}
	public void setC_category_id(String c_category_id) {
		this.c_category_id = c_category_id;
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
	public int getFinal_price() {
		return final_price;
	}
	public void setFinal_price(int final_price) {
		this.final_price = final_price;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public Date getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}
	public Date getMod_dt() {
		return mod_dt;
	}
	public void setMod_dt(Date mod_dt) {
		this.mod_dt = mod_dt;
	}
	@Override
	public String toString() {
		return "ItemVO [name=" + name + ", expired=" + expired + ", detail=" + detail + ", main_img=" + main_img
				+ ", c_category_id=" + c_category_id + ", item_no=" + item_no + ", price=" + price + ", final_price="
				+ final_price + ", sales=" + sales + ", reg_dt=" + reg_dt + ", mod_dt=" + mod_dt + "]";
	}
	

	


}
