package kr.co.rocketkurly.admin.vo;

public class InquiryVO {

	private String stdate, eddate;

	public String getStdate() {
		return stdate;
	}

	public void setStdate(String stdate) {
		this.stdate = stdate;
	}

	public String getEddate() {
		return eddate;
	}

	public void setEddate(String eddate) {
		this.eddate = eddate;
	}

	@Override
	public String toString() {
		return "InquiryVO [stdate=" + stdate + ", eddate=" + eddate + "]";
	}

}
