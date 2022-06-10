package kr.co.rocketkurly.admin.domain;

public class OrderDomain {

	private String request, order_state, order_date, member_id, order_flag;
	private int order_no, price;
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String getOrder_state() {
		return order_state;
	}
	public void setOrder_state(String order_state) {
		this.order_state = order_state;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getOrder_flag() {
		return order_flag;
	}
	public void setOrder_flag(String order_flag) {
		this.order_flag = order_flag;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "OrderDomain [request=" + request + ", order_state=" + order_state + ", order_date=" + order_date
				+ ", member_id=" + member_id + ", order_flag=" + order_flag + ", order_no=" + order_no + ", price="
				+ price + "]";
	}

	
	

}
