package kr.co.rocketkurly.admin.domain;

public class OrderCntDomain {

	private String order_date;
	private int order_cnt;

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

	public int getOrder_cnt() {
		return order_cnt;
	}

	public void setOrder_cnt(int order_cnt) {
		this.order_cnt = order_cnt;
	}

	@Override
	public String toString() {
		return "OederCntDomain [order_date=" + order_date + ", order_cnt=" + order_cnt + "]";
	}

}
