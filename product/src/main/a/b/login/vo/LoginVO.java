package main.a.b.login.vo;

public class LoginVO {

	private String mnum;
	private String mname;
	private String memail;
	private String mid;
	private String mpw;
	private String minsertdate;
	private String deleteyn;
	
	
	public LoginVO() {}


	public LoginVO(String mnum, String mname, String memail, String mid, String mpw, String minsertdate,
			String deleteyn) {
		this.mnum = mnum;
		this.mname = mname;
		this.memail = memail;
		this.mid = mid;
		this.mpw = mpw;
		this.minsertdate = minsertdate;
		this.deleteyn = deleteyn;
	}


	public String getMnum() {
		return mnum;
	}


	public void setMnum(String mnum) {
		this.mnum = mnum;
	}


	public String getMname() {
		return mname;
	}


	public void setMname(String mname) {
		this.mname = mname;
	}


	public String getMemail() {
		return memail;
	}


	public void setMemail(String memail) {
		this.memail = memail;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getMpw() {
		return mpw;
	}


	public void setMpw(String mpw) {
		this.mpw = mpw;
	}


	public String getMinsertdate() {
		return minsertdate;
	}


	public void setMinsertdate(String minsertdate) {
		this.minsertdate = minsertdate;
	}


	public String getDeleteyn() {
		return deleteyn;
	}


	public void setDeleteyn(String deleteyn) {
		this.deleteyn = deleteyn;
	}
	
	
	
}
