package kr.co.rocketkurly.cust.vo;

public class CategoriesVO {
	
	private String c_category_id, p_category_id, p_category_name, sub_name;
	private String current_Ccategory,current_Pcategory;
	public String getC_category_id() {
		return c_category_id;
	}
	public void setC_category_id(String c_category_id) {
		this.c_category_id = c_category_id;
	}
	public String getP_category_id() {
		return p_category_id;
	}
	public void setP_category_id(String p_category_id) {
		this.p_category_id = p_category_id;
	}
	public String getP_category_name() {
		return p_category_name;
	}
	public void setP_category_name(String p_category_name) {
		this.p_category_name = p_category_name;
	}
	public String getSub_name() {
		return sub_name;
	}
	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}
	public String getCurrent_Ccategory() {
		return current_Ccategory;
	}
	public void setCurrent_Ccategory(String current_Ccategory) {
		this.current_Ccategory = current_Ccategory;
	}
	public String getCurrent_Pcategory() {
		return current_Pcategory;
	}
	public void setCurrent_Pcategory(String current_Pcategory) {
		this.current_Pcategory = current_Pcategory;
	}
	@Override
	public String toString() {
		return "CategoriesVO [c_category_id=" + c_category_id + ", p_category_id=" + p_category_id
				+ ", p_category_name=" + p_category_name + ", sub_name=" + sub_name + ", current_Ccategory="
				+ current_Ccategory + ", current_Pcategory=" + current_Pcategory + "]";
	}
	

	


}
