package com.saltlux.bitcom.vo;

public class OrdersDetailVo {

	private int odid;
	private int pno;
	private int ono;
	private String uid;
	private int odqty;

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

	@Override
	public String toString() {
		return "OrdersDetailVo [odid=" + odid + ", pno=" + pno + ", ono=" + ono + ", uid=" + uid + ", odqty=" + odqty
				+ "]";
	}

}
