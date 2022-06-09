package kr.co.rocketkurly.cust.vo;

import java.util.Arrays;

public class OrderVO {

	String itemName[];
	int itemNo[], total[], quantity[];

	public String[] getItemName() {
		return itemName;
	}

	public void setItemName(String[] itemName) {
		this.itemName = itemName;
	}

	public int[] getItemNo() {
		return itemNo;
	}

	public void setItemNo(int[] itemNo) {
		this.itemNo = itemNo;
	}

	public int[] getTotal() {
		return total;
	}

	public void setTotal(int[] total) {
		this.total = total;
	}

	public int[] getQuantity() {
		return quantity;
	}

	public void setQuantity(int[] quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "PayVO [itemName=" + Arrays.toString(itemName) + ", itemNo=" + Arrays.toString(itemNo) + ", total="
				+ Arrays.toString(total) + ", quantity=" + Arrays.toString(quantity) + "]";
	}

}
