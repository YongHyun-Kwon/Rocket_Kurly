package kr.co.rocketkurly.cust.vo;

public class PayVO {

	private int subTotal, discount, total, orderNo;

	public int getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(int subTotal) {
		this.subTotal = subTotal;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "PayVO [subTotal=" + subTotal + ", discount=" + discount + ", total=" + total + ", orderNo=" + orderNo
				+ "]";
	}

}
