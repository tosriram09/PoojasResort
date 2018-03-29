package com.pooja.resort.dao;

import java.util.List;

public class Invoice {
	Customer customer;
	List<CustomerService> customerService;
	CustomerRoom customerRoom;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<CustomerService> getCustomerService() {
		return customerService;
	}

	public void setCustomerService(List<CustomerService> customerService) {
		this.customerService = customerService;
	}

	public CustomerRoom getCustomerRoom() {
		return customerRoom;
	}

	public void setCustomerRoom(CustomerRoom customerRoom) {
		this.customerRoom = customerRoom;
	}
}
