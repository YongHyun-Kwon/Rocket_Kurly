package kr.co.rocketkurly.cust.vo;

public class ImgVO {
	
	private String item_no,img;

	
	public String getItem_no() {
		return item_no;
	}

	public void setItem_no(String item_no) {
		this.item_no = item_no;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "ImgVO [item_no=" + item_no + ", img=" + img + "]";
	}


	
}
