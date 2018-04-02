package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerInfoDAO {
	public CustomerInfo getCustomerDetails(String roomNbr) {
		int roomNumber = Integer.parseInt(roomNbr);
		CustomerInfo customerInfo = new CustomerInfo();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelresort", "pooja", "pooja");
			
			PreparedStatement pstmt = conn.prepareStatement("SELECT c.*, r.* FROM customer c, customer_room r WHERE c.roomnbr = r.roomnbr AND c.roomnbr = ?");
			pstmt.setInt(1, roomNumber);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				customerInfo.setName(rs.getString("name"));
				customerInfo.setEmail(rs.getString("email"));
				customerInfo.setAddress(rs.getString("address1") + "," + rs.getString("address2") + "," + rs.getString("address3"));
				customerInfo.setPhoneNumber(rs.getString("phone"));
				customerInfo.setRoomNbr(rs.getString("c.roomnbr"));
				customerInfo.setCheckInDate(rs.getString("checkindate"));
				customerInfo.setCheckOutDate(rs.getString("checkoutdate"));
				customerInfo.setRoomRate(rs.getString("roomrate"));
				customerInfo.setRoomType(rs.getString("roomtype"));
			}
		} catch (Exception e) {
			
		}
		return customerInfo;
	}
}
