package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class CheckAvailabilityDAO {
	public boolean checkAvailability(String roomtype, String inDate, String outDate) {
		boolean isAvailable = false;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelresort", "pooja", "pooja");
			LocalDate checkInDate = LocalDate.parse(inDate, DateTimeFormatter.ofPattern("MM/dd/yyyy"));
			LocalDate checkOutDate = LocalDate.parse(outDate, DateTimeFormatter.ofPattern("MM/dd/yyyy"));
				
			System.out.println("Checin date -> " + checkInDate.toString() + "=" + checkOutDate.toString() );

			PreparedStatement pstmt1 = conn.prepareStatement("select roomtype from available_rooms "
					+ "where (roomnbr, roomtype) not in (" + "select roomnbr, roomtype from available_rooms "
					+ "where (checkindate >= ? and checkindate < ?)"
					+ "or (checkoutdate >= ? and checkoutdate < ?) and roomtype = ? and occupancy = 'Y')and roomtype = ?");
			pstmt1.setString(1, checkInDate.toString());
			pstmt1.setString(2, checkOutDate.toString());
			pstmt1.setString(3, checkInDate.toString());
			pstmt1.setString(4, checkOutDate.toString());
			pstmt1.setString(5, roomtype);
			pstmt1.setString(6, roomtype);
			ResultSet rs = pstmt1.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getString("roomtype"));
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
		System.out.println(dao.checkAvailability("MAHARAJA", "2018-02-28", "2018-03-05"));
	}
}
