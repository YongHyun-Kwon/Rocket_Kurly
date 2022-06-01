package kr.co.rocketkurly.admin.domain;

public class UserHistoryDomain {

	private String login_date;
	private int visit_cnt;

	public String getLogind_date() {
		return login_date;
	}

	public void setLogind_date(String login_date) {
		this.login_date = login_date;
	}

	public int getVisit_cnt() {
		return visit_cnt;
	}

	public void setVisit_cnt(int visit_cnt) {
		this.visit_cnt = visit_cnt;
	}

	@Override
	public String toString() {
		return "UserHistoryDomain [login_date=" + login_date + ", visit_cnt=" + visit_cnt + "]";
	}

}
