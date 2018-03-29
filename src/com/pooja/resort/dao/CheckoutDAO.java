package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CheckoutDAO {
	public void checkOutGuest(int roomNumber) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelresort", "pooja", "pooja");
			PreparedStatement pstmt = conn.prepareStatement("UPDATE available_rooms SET occupancy = 'N' WHERE roomnbr = ?");
			pstmt.setInt(1, roomNumber);
			pstmt.execute();
		} catch(Exception e) {
			e.printStackTrace();
		}

	}
}
