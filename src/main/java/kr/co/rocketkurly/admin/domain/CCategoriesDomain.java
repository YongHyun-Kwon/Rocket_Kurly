package kr.co.rocketkurly.admin.domain;

public class CCategoriesDomain {
	
	private String p_category_id,p_category_name,c_update_date,sub_name,c_category_id,sub_id;

	
	
	public String getSub_id() {
		return sub_id;
	}

	public void setSub_id(String sub_id) {
		this.sub_id = sub_id;
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

	public String getC_update_date() {
		return c_update_date;
	}

	public void setC_update_date(String c_update_date) {
		this.c_update_date = c_update_date;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	public String getC_category_id() {
		return c_category_id;
	}

	public void setC_category_id(String c_category_id) {
		this.c_category_id = c_category_id;
	}

	@Override
	public String toString() {
		return "CCategoriesDomain [p_category_id=" + p_category_id + ", p_category_name=" + p_category_name
				+ ", c_update_date=" + c_update_date + ", sub_name=" + sub_name + ", c_category_id=" + c_category_id
				+ ", sub_id=" + sub_id + "]";
	}


	
	
	


}
