package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertRooms {

	public static void main(String[] args) {
		try {
			for (int i =1; i < 10; i++) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelresort", "pooja",
						"pooja");
				PreparedStatement pstmt1 = conn
						.prepareStatement("INSERT INTO available_rooms(roomnbr, roomtype, occupancy) VALUES(?, ?, ?)");
				pstmt1.setInt(1, i);
				pstmt1.setString(2, "DELUXE");
				pstmt1.setString(3, "N");
				pstmt1.execute();
				pstmt1.close();
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
