package kr.co.rocketkurly.admin.domain;

public class QuestionCntDomain {

	private String que_dt;
	private int que_cnt;

	public String getQue_dt() {
		return que_dt;
	}

	public void setQue_dt(String que_dt) {
		this.que_dt = que_dt;
	}

	public int getQue_cnt() {
		return que_cnt;
	}

	public void setQue_cnt(int que_cnt) {
		this.que_cnt = que_cnt;
	}

	@Override
	public String toString() {
		return "QuestionCountDomain [que_dt=" + que_dt + ", que_cnt=" + que_cnt + "]";
	}

}// class
