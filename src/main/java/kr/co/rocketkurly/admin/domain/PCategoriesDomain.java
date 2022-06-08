package kr.co.rocketkurly.admin.domain;

public class PCategoriesDomain {
	
	private String p_category_id,p_icon,p_category_name,p_create_date,p_update_date,p_category_name_before;

	public String getP_category_name_before() {
		return p_category_name_before;
	}

	public void setP_category_name_before(String p_category_name_before) {
		this.p_category_name_before = p_category_name_before;
	}

	public String getP_category_id() {
		return p_category_id;
	}

	public void setP_category_id(String p_category_id) {
		this.p_category_id = p_category_id;
	}

	public String getP_icon() {
		return p_icon;
	}

	public void setP_icon(String p_icon) {
		this.p_icon = p_icon;
	}

	public String getP_category_name() {
		return p_category_name;
	}

	public void setP_category_name(String p_category_name) {
		this.p_category_name = p_category_name;
	}

	public String getP_create_date() {
		return p_create_date;
	}

	public void setP_create_date(String p_create_date) {
		this.p_create_date = p_create_date;
	}

	public String getP_update_date() {
		return p_update_date;
	}

	public void setP_update_date(String p_update_date) {
		this.p_update_date = p_update_date;
	}

	@Override
	public String toString() {
		return "PCategoriesVO [p_category_id=" + p_category_id + ", p_icon=" + p_icon + ", p_category_name="
				+ p_category_name + ", p_create_date=" + p_create_date + ", p_update_date=" + p_update_date + "]";
	}
	
	
	


}
