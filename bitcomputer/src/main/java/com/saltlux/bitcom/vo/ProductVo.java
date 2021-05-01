package com.saltlux.bitcom.vo;

public class ProductVo {

	private int pno;
	private String pcategory;
	private String pname;
	private int pprice;
	private String pmanufacturer;
	private String psocket;
	private String pcontent;
	private String pimage;
	private int pqty;

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getPcategory() {
		return pcategory;
	}

	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
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

	public String getPmanufacturer() {
		return pmanufacturer;
	}

	public void setPmanufacturer(String pmanufacturer) {
		this.pmanufacturer = pmanufacturer;
	}

	public String getPsocket() {
		return psocket;
	}

	public void setPsocket(String psocket) {
		this.psocket = psocket;
	}

	public String getPcontent() {
		return pcontent;
	}

	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public int getPqty() {
		return pqty;
	}

	public void setPqty(int pqty) {
		this.pqty = pqty;
	}

	@Override
	public String toString() {
		return "ProductVo [pno=" + pno + ", pcategory=" + pcategory + ", pname=" + pname + ", pprice=" + pprice
				+ ", pmanufacturer=" + pmanufacturer + ", psocket=" + psocket + ", pcontent=" + pcontent + ", pimage="
				+ pimage + ", pqty=" + pqty + "]";
	}

}
