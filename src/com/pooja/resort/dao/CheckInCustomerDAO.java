package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;
import java.util.StringTokenizer;

public class CheckInCustomerDAO {
	public int addCustomer(String queryString) {
		StringTokenizer tokenizer = new StringTokenizer(queryString, "&");

		String[] tokens = new String[12];

		int i = 0;
		while (tokenizer.hasMoreElements()) {
			tokens[i++] = tokenizer.nextToken();
		}
		String name = tokens[0];
		String email = tokens[1];
		String address = tokens[2];
		String phone = tokens[3];
		String roomname = tokens[4];
		String checkin = tokens[5];
		String checkout = tokens[6];
		String adults = tokens[7];
		String kids = tokens[8];
		String pets = tokens[9];
		String smoke = tokens[10];
		String roomrate = tokens[11];

		int roomNumber = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelresort", "pooja", "pooja");

			boolean roomAllocated = false;

			while (!roomAllocated) {
				Random randomObj = new Random();
				roomNumber = randomObj.ints(1, 50).findFirst().getAsInt();

				PreparedStatement pstmt3 = conn
						.prepareStatement("SELECT occupancy FROM available_rooms WHERE roomnbr = ? AND roomtype = ?");
				pstmt3.setInt(1, roomNumber);
				pstmt3.setString(2, roomname);

				ResultSet rs = pstmt3.executeQuery();

				while (rs.next()) {
					String occupancy = rs.getString(1);

					if (occupancy.equals("N"))
						roomAllocated = true;
					else
						System.out.println("Room Occupied");
				}
				pstmt3.close();
			}

			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO CUSTOMER VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt.setString(1, name);
			pstmt.setString(2, email);

			int count = 3;
			StringTokenizer addressTokenizer = new StringTokenizer(address, ",");
			while (addressTokenizer.hasMoreTokens()) {
				String address1 = addressTokenizer.nextToken();
				pstmt.setString(count++, address1);
			}
			pstmt.setString(6, phone);
			pstmt.setString(7, "F");
			pstmt.setInt(8, roomNumber);
			pstmt.execute();

			PreparedStatement pstmt1 = conn
					.prepareStatement("INSERT INTO CUSTOMER_ROOM VALUES(?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt1.setInt(1, roomNumber);
			pstmt1.setString(2, checkin);
			pstmt1.setString(3, checkout);
			pstmt1.setString(4, adults);
			pstmt1.setString(5, kids);
			pstmt1.setString(6, "N");
			pstmt1.setString(7, "N");
			pstmt1.setString(8, roomrate);
			pstmt1.execute();

			PreparedStatement pstmt2 = conn.prepareStatement(
					"UPDATE available_rooms SET checkindate = ?, checkoutdate = ?, occupancy = ? WHERE roomnbr = ? AND roomtype = ?");
			pstmt2.setString(1, checkin);
			pstmt2.setString(2, checkout);
			pstmt2.setString(3, "Y");
			pstmt2.setString(4, Integer.toString(roomNumber));
			pstmt2.setString(5, roomname);
			pstmt2.execute();

			pstmt.close();
			pstmt1.close();
			pstmt2.close();

			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return roomNumber;
	}
}
