package com.saltlux.bitcom.vo;

public class UserVo {
	private String uid;
	private String upassword;
	private String uname;
	private String uphone;
	private String uemail;
	private String uaddress;
	private String urdate;
	private String uauth;
	private String upost;
	private char udrop;
	
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	public String getUrdate() {
		return urdate;
	}
	public void setUrdate(String urdate) {
		this.urdate = urdate;
	}
	public String getUauth() {
		return uauth;
	}
	public void setUauth(String uauth) {
		this.uauth = uauth;
	}
	public String getUpost() {
		return upost;
	}
	public void setUpost(String upost) {
		this.upost = upost;
	}
	public char getUdrop() {
		return udrop;
	}
	public void setUdrop(char udrop) {
		this.udrop = udrop;
	}
	@Override
	public String toString() {
		return "UserVo [uid=" + uid + ", upassword=" + upassword + ", uname=" + uname + ", uphone=" + uphone
				+ ", uemail=" + uemail + ", uaddress=" + uaddress + ", urdate=" + urdate + ", uauth=" + uauth
				+ ", upost=" + upost + ", udrop=" + udrop + "]";
	}
	
}
