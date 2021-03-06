package kr.co.rocketkurly.cust.vo;

public class OrderingVO {

	private String flag, id, name, email, tel, zipcode, address, couponNo, cartFlag;
	private int price, subPrice, discount, orderNo;

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCouponNo() {
		return couponNo;
	}

	public void setCouponNo(String couponNo) {
		this.couponNo = couponNo;
	}

	public String getCartFlag() {
		return cartFlag;
	}

	public void setCartFlag(String cartFlag) {
		this.cartFlag = cartFlag;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSubPrice() {
		return subPrice;
	}

	public void setSubPrice(int subPrice) {
		this.subPrice = subPrice;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "OrderingVO [flag=" + flag + ", id=" + id + ", name=" + name + ", email=" + email + ", tel=" + tel
				+ ", zipcode=" + zipcode + ", address=" + address + ", couponNo=" + couponNo + ", cartFlag=" + cartFlag
				+ ", price=" + price + ", subPrice=" + subPrice + ", discount=" + discount + ", orderNo=" + orderNo
				+ "]";
	}

}
