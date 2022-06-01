package kr.co.rocketkurly.admin.domain;

public class RevenueDomain {

	private String rev_date;
	private int revenue;

	public String getRev_date() {
		return rev_date;
	}

	public void setRev_date(String rev_date) {
		this.rev_date = rev_date;
	}

	public int getRevenue() {
		return revenue;
	}

	public void setRevenue(int revenue) {
		this.revenue = revenue;
	}

	@Override
	public String toString() {
		return "RevenueDomain [rev_date=" + rev_date + ", revenue=" + revenue + "]";
	}

}
