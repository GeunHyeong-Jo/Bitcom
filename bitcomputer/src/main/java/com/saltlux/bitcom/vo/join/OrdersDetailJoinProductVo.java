package com.saltlux.bitcom.vo.join;

public class OrdersDetailJoinProductVo {
	
	private int odid;
	private int pno;
	private int ono;
	private String uid;
	private int odqty;
	private String pcategory;
	private String pname;
	private int pprice;
	private String pmanufacturer;
	private String psocket;
	private String pcontent;
	private String pimage;
	private int pqty;
	public int getOdid() {
		return odid;
	}
	public void setOdid(int odid) {
		this.odid = odid;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getOno() {
		return ono;
	}
	public void setOno(int ono) {
		this.ono = ono;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public int getOdqty() {
		return odqty;
	}
	public void setOdqty(int odqty) {
		this.odqty = odqty;
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
		return "OrdersDetailJoinProductVo [odid=" + odid + ", pno=" + pno + ", ono=" + ono + ", uid=" + uid + ", odqty="
				+ odqty + ", pcategory=" + pcategory + ", pname=" + pname + ", pprice=" + pprice + ", pmanufacturer="
				+ pmanufacturer + ", psocket=" + psocket + ", pcontent=" + pcontent + ", pimage=" + pimage + ", pqty="
				+ pqty + "]";
	}
}
