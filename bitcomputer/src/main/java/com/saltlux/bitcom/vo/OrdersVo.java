package com.saltlux.bitcom.vo;

public class OrdersVo {

	private int ono;
	private String uid;
	private String oaddress;
	private String odate;
	private String oname;
	private String ostate;
	private String opost;
	private int ototal;
	private String oinvoice;
	private String ophone;

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

	public String getOaddress() {
		return oaddress;
	}

	public void setOaddress(String oaddress) {
		this.oaddress = oaddress;
	}

	public String getOdate() {
		return odate;
	}

	public void setOdate(String odate) {
		this.odate = odate;
	}

	public String getOname() {
		return oname;
	}

	public void setOname(String oname) {
		this.oname = oname;
	}

	public String getOstate() {
		return ostate;
	}

	public void setOstate(String ostate) {
		this.ostate = ostate;
	}

	public String getOpost() {
		return opost;
	}

	public void setOpost(String opost) {
		this.opost = opost;
	}

	public int getOtotal() {
		return ototal;
	}

	public void setOtotal(int ototal) {
		this.ototal = ototal;
	}

	public String getOinvoice() {
		return oinvoice;
	}

	public void setOinvoice(String oinvoice) {
		this.oinvoice = oinvoice;
	}

	public String getOphone() {
		return ophone;
	}

	public void setOphone(String ophone) {
		this.ophone = ophone;
	}

	@Override
	public String toString() {
		return "OrdersVo [ono=" + ono + ", uid=" + uid + ", oaddress=" + oaddress + ", odate=" + odate + ", oname="
				+ oname + ", ostate=" + ostate + ", opost=" + opost + ", ototal=" + ototal + ", oinvoice=" + oinvoice
				+ ", ophone=" + ophone + "]";
	}
}
