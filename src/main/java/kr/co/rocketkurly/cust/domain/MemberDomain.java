package kr.co.rocketkurly.cust.domain;

public class MemberDomain {

	private String member_id, pw, nickname, name, email, tel, addr, address, status, reg_dt,sum_price;

	public MemberDomain() {

	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReg_dt() {
		return reg_dt;
	}

	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}

	public String getSum_price() {
		return sum_price;
	}

	public void setSum_price(String sum_price) {
		this.sum_price = sum_price;
	}

	@Override
	public String toString() {
		return "MemberDomain [member_id=" + member_id + ", pw=" + pw + ", nickname=" + nickname + ", name=" + name
				+ ", email=" + email + ", tel=" + tel + ", addr=" + addr + ", address=" + address + ", status=" + status
				+ ", reg_dt=" + reg_dt + ", sum_price=" + sum_price + ", getMember_id()=" + getMember_id()
				+ ", getPw()=" + getPw() + ", getNickname()=" + getNickname() + ", getName()=" + getName()
				+ ", getEmail()=" + getEmail() + ", getTel()=" + getTel() + ", getAddr()=" + getAddr()
				+ ", getAddress()=" + getAddress() + ", getStatus()=" + getStatus() + ", getReg_dt()=" + getReg_dt()
				+ ", getSum_price()=" + getSum_price() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	

	


	

}
