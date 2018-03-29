package com.pooja.resort;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pooja.resort.dao.CheckInCustomerDAO;

/**
 * Servlet implementation class AddCustomer
 */
@WebServlet("/AddCustomer")
public class CheckInCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckInCustomer() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String queryString = request.getParameter("queryString");
		CheckInCustomerDAO customerDAO = new CheckInCustomerDAO();
		int roomNumber = customerDAO.addCustomer(queryString);

		String message = "Customer Alloted Room: " + roomNumber;
		request.setAttribute("message", message);
		request.getRequestDispatcher("/checkincustomer.jsp").forward(request, response);
	}
}
