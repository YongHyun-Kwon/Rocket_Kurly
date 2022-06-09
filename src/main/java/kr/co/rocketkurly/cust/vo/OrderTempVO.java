package kr.co.rocketkurly.cust.vo;

public class OrderTempVO {

	String itemName;
	int itemNo, total, quantity;

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

	@Override
	public String toString() {
		return "PayTempVO [itemName=" + itemName + ", itemNo=" + itemNo + ", total=" + total + ", quantity=" + quantity
				+ "]";
	}

}
