package kr.co.rocketkurly.cust.vo;

public class OrderItemTempVO {

	private String itemName;
	private int itemNo, total, quantity, orderNo;

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "PayTempVO [itemName=" + itemName + ", itemNo=" + itemNo + ", total=" + total + ", quantity=" + quantity
				+ "]";
	}

}
