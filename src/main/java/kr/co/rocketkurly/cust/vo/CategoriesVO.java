package kr.co.rocketkurly.cust.vo;

public class CategoriesVO {
	
	private String c_category_id, p_category_id;
	
	
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

	@Override
	public String toString() {
		return "CategoriesVO [c_category_id=" + c_category_id + ", p_category_id=" + p_category_id + "]";
	}
	
	


}
