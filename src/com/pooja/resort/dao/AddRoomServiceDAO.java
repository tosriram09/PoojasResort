package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDate;

public class AddRoomServiceDAO {
	public void addRoomService(int roomNumber, String serviceName, int cost) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelresort", "pooja", "pooja");

			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO  customer_services VALUES(?, ?, ?, ?)");
			pstmt.setInt(1, roomNumber);
			pstmt.setString(2, LocalDate.now().toString());
			pstmt.setString(3, serviceName);
			pstmt.setInt(4, cost);
			pstmt.execute();

		} catch (Exception se) {
			se.printStackTrace();
		}
	}
}