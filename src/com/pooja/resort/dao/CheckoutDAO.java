package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CheckoutDAO {
	public void checkOutGuest(int roomNumber) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelresort", "pooja", "pooja");
			PreparedStatement pstmt = conn.prepareStatement("UPDATE available_rooms SET occupancy = ?, checkindate = ?, checkoutdate = ? WHERE roomnbr = ?");
			
			pstmt.setString(1, "N");
			pstmt.setString(2, " ");
			pstmt.setString(3,  " ");
			pstmt.setInt(4, roomNumber);
			
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
