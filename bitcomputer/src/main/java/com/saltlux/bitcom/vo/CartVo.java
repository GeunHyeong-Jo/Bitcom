package com.saltlux.bitcom.vo;

public class CartVo {
	private int cid;
	private String uid;
	private int pno;
	private int cqty;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
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

	public int getCqty() {
		return cqty;
	}

	public void setCqty(int cqty) {
		this.cqty = cqty;
	}

	@Override
	public String toString() {
		return "CartVo [cid=" + cid + ", uid=" + uid + ", pno=" + pno + ", cqty=" + cqty + "]";
	}

}
