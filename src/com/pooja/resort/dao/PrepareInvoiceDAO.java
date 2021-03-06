package com.pooja.resort.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PrepareInvoiceDAO {
	public Invoice prepareInvoice(int roomNumber) {
		Invoice invoice = new Invoice();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelresort", "pooja", "pooja");

			PreparedStatement pstmt = conn.prepareStatement(
					"SELECT c.name, c.address1, c.address2, c.address3, c.email, r.roomnbr, r.checkindate, r.checkoutdate, r.roomrate, r.roomtype, "
							+ "	s.servicedate, s.servicename, s.cost FROM CUSTOMER c JOIN CUSTOMER_ROOM r ON (r.roomnbr = c.roomnbr) LEFT JOIN CUSTOMER_SERVICES s ON (s.roomnbr = r.roomnbr) WHERE r.roomnbr = ?");
			pstmt.setInt(1, roomNumber);
			ResultSet rs = pstmt.executeQuery();

			int i = 0;
			CustomerRoom room = new CustomerRoom();
			Customer customer = new Customer();
			List<CustomerService> customerService = new ArrayList<>();
			while (rs.next()) {
				if (i == 0) {
					customer.setName(rs.getString("name"));
					customer.setAddress1(rs.getString("address1"));
					customer.setAddress2(rs.getString("address2"));
					customer.setAddress3(rs.getString("address3"));

					invoice.setCustomer(customer);

					room.setRoomNbr(rs.getString("roomnbr"));
					room.setCheckindate(rs.getString("checkindate"));
					room.setRoomrate(rs.getString("roomrate"));
					room.setCheckoutdate(rs.getString("checkoutdate"));
					room.setRoomType(rs.getString("roomtype"));
					System.out.println(room.getRoomType());
					invoice.setCustomerRoom(room);
				}

				if (null != rs.getString("servicedate")) {
					CustomerService service = new CustomerService();
					service.setServicedate(rs.getString("servicedate"));
					service.setServicename(rs.getString("servicename"));
					service.setCost(rs.getString("cost"));

					customerService.add(service);
				}

				i++;
			}
			invoice.setCustomerService(customerService);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return invoice;
	}
}
