package com.saltlux.bitcom.vo.join;

public class CartJoinProductVo {

	private int pno;
	private String uid;
	private int pqty;
	private String pname;
	private int pprice;
	private String pcategory;
	private String psocket;
	private String pimage;
	private int cqty;
	private String pmanufacturer;
	private int cid;
	private String pcontent;

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getPqty() {
		return pqty;
	}

	public void setPqty(int pqty) {
		this.pqty = pqty;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public String getPcategory() {
		return pcategory;
	}

	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}

	public String getPsocket() {
		return psocket;
	}

	public void setPsocket(String psocket) {
		this.psocket = psocket;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public int getCqty() {
		return cqty;
	}

	public void setCqty(int cqty) {
		this.cqty = cqty;
	}

	public String getPmanufacturer() {
		return pmanufacturer;
	}

	public void setPmanufacturer(String pmanufacturer) {
		this.pmanufacturer = pmanufacturer;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getPcontent() {
		return pcontent;
	}

	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}

	@Override
	public String toString() {
		return "CartJoinVo [pno=" + pno + ", uid=" + uid + ", pqty=" + pqty + ", pname=" + pname + ", pprice=" + pprice
				+ ", pcategory=" + pcategory + ", psocket=" + psocket + ", pimage=" + pimage + ", cqty=" + cqty
				+ ", pmanufacturer=" + pmanufacturer + ", cid=" + cid + ", pcontent=" + pcontent + "]";
	}

}
