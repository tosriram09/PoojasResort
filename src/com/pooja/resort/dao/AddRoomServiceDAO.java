package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDate;

public class AddRoomServiceDAO {
	public void addRoomService(int roomNumber, String serviceName) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelresort", "pooja", "pooja");

			int separator = serviceName.indexOf("|");
			String serviceType = serviceName.substring(0, separator);
			int serviceCost = Integer.parseInt(serviceName.substring(separator + 1));

			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO  customer_services VALUES(?, ?, ?, ?)");
			pstmt.setInt(1, roomNumber);
			pstmt.setString(2, LocalDate.now().toString());
			pstmt.setString(3, serviceType);
			pstmt.setInt(4, serviceCost);
			pstmt.execute();

		} catch (Exception se) {
			se.printStackTrace();
		}
	}
}