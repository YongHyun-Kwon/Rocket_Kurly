package kr.co.rocketkurly.admin.domain;

public class MemberRegCntDomain {

	private String reg_dt;
	private int reg_cnt;

	public String getReg_dt() {
		return reg_dt;
	}

	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}

	public int getReg_cnt() {
		return reg_cnt;
	}

	public void setReg_cnt(int reg_cnt) {
		this.reg_cnt = reg_cnt;
	}

	@Override
	public String toString() {
		return "MemberRegCntDomain [reg_dt=" + reg_dt + ", reg_cnt=" + reg_cnt + "]";
	}

}
