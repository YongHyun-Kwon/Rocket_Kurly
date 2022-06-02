package kr.co.rocketkurly.admin.domain;

public class NoticeDomain {

	private String notice_num, notice_main, sign_date;

	public String getNotice_num() {
		return notice_num;
	}

	public void setNotice_num(String notice_num) {
		this.notice_num = notice_num;
	}

	public String getNotice_main() {
		return notice_main;
	}

	public void setNotice_main(String notice_main) {
		this.notice_main = notice_main;
	}

	public String getSign_date() {
		return sign_date;
	}

	public void setSign_date(String sign_date) {
		this.sign_date = sign_date;
	}

	@Override
	public String toString() {
		return "NoticeDomain [notice_num=" + notice_num + ", notice_main=" + notice_main + ", sign_date=" + sign_date
				+ "]";
	}

}
