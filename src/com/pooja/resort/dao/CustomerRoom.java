package com.pooja.resort.dao;


public class CustomerRoom {
	String roomNbr;
	String checkindate;
	String roomrate;
	String checkoutdate;
	private String roomType;
	
	
	public String getRoomNbr() {
		return roomNbr;
	}
	public void setRoomNbr(String roomNbr) {
		this.roomNbr = roomNbr;
	}
	public String getCheckindate() {
		return checkindate;
	}
	public void setCheckindate(String checkindate) {
		this.checkindate = checkindate;
	}
	public String getRoomrate() {
		return roomrate;
	}
	public void setRoomrate(String roomrate) {
		this.roomrate = roomrate;
	}
	public String getCheckoutdate() {
		return checkoutdate;
	}
	public void setCheckoutdate(String checkoutdate) {
		this.checkoutdate = checkoutdate;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
}
