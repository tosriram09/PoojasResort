package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;
import java.util.StringTokenizer;

public class AddCustomerDAO {
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
			roomNumber = (int) (Math.random()*100);

			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO CUSTOMER VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			
			int count = 3;
			StringTokenizer addressTokenizer = new StringTokenizer(address, ",");
			while (addressTokenizer.hasMoreTokens()) {
				String address1 = addressTokenizer.nextToken();
				System.out.println("Address -> " + address1);
				pstmt.setString(count++, address1);
			}
			pstmt.setString(6, phone);
			pstmt.setString(7, "F");
			pstmt.setInt(8, roomNumber);
			pstmt.execute();
			
			PreparedStatement pstmt1 = conn.prepareStatement("INSERT INTO CUSTOMER_ROOM VALUES(?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt1.setInt(1, roomNumber);
			pstmt1.setString(2, checkin);
			pstmt1.setString(3, checkout);
			pstmt1.setString(4, adults);
			pstmt1.setString(5, kids);
			pstmt1.setString(6, "N");
			pstmt1.setString(7, "N");
			pstmt1.setString(8, roomrate);
			pstmt1.execute();
			
			pstmt.close();
			pstmt1.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return roomNumber;
	}
}
