package com.saltlux.bitcom.vo;

public class BoardVo {

	private int bid;
	private String uid;
	private int pno;
	private String bwriter;
	private String bpassword;
	private String btitle;
	private String bcontent;
	private String brdate;
	private int bhit;

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public String getBpassword() {
		return bpassword;
	}

	public void setBpassword(String bpassword) {
		this.bpassword = bpassword;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public String getBrdate() {
		return brdate;
	}

	public void setBrdate(String brdate) {
		this.brdate = brdate;
	}

	public int getBhit() {
		return bhit;
	}

	public void setBhit(int bhit) {
		this.bhit = bhit;
	}

	@Override
	public String toString() {
		return "BoardVo [bid=" + bid + ", uid=" + uid + ", pno=" + pno + ", bwriter=" + bwriter + ", bpassword="
				+ bpassword + ", btitle=" + btitle + ", bcontent=" + bcontent + ", brdate=" + brdate + ", bhit=" + bhit
				+ "]";
	}

}
