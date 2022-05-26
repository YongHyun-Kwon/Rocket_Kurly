package kr.co.rocketkurly.cust.vo;

import java.sql.Date;

public class MemberVO {

	private String id, email, pw, name, nickname, tel, addr, address, status;

	public MemberVO() {
	}

	public MemberVO(String id, String email, String pw, String name, String nickname, String tel, String addr,
			String address, String status) {
		this.id = id;
		this.email = email;
		this.pw = pw;
		this.name = name;
		this.nickname = nickname;
		this.tel = tel;
		this.addr = addr;
		this.address = address;
		this.status = status;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", email=" + email + ", pw=" + pw + ", name=" + name + ", nickname=" + nickname
				+ ", tel=" + tel + ", addr=" + addr + ", address=" + address + ", status=" + status + "]";
	}
	
}
