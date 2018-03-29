package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CheckAvailabilityDAO {
	public boolean checkAvailability(String checkInDate, String checkOutDate) {
		boolean isAvailable = false;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelresort", "pooja", "pooja");

			PreparedStatement pstmt1 = conn.prepareStatement("select 1 from available_rooms "
					+ "where (roomnbr, roomtype) not in (" + "select roomnbr, roomtype from available_rooms "
					+ "where (checkindate >= ? and checkindate < ?)"
					+ "or (checkoutdate >= ? and checkoutdate < ?))");
			pstmt1.setString(1, checkInDate);
			pstmt1.setString(2, checkOutDate);
			pstmt1.setString(3, checkInDate);
			pstmt1.setString(4, checkOutDate);
			ResultSet rs = pstmt1.executeQuery();

			while (rs.next()) {
				isAvailable = true;
				break;
			}

			pstmt1.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isAvailable;
	}
	
	public static void main(String[] args) {
		CheckAvailabilityDAO dao = new CheckAvailabilityDAO();
		System.out.println(dao.checkAvailability("2018-02-28", "2018-03-05"));
	}
}
