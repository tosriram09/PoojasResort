package com.pooja.resort;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pooja.resort.dao.CheckAvailabilityDAO;

/**
 * Servlet implementation class CheckAvailability
 */
@WebServlet("/CheckAvailability")
public class CheckAvailability extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckAvailability() {
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
		String checkInDate 	= request.getParameter("datepicker1");
		String checkOutDate = request.getParameter("datepicker2");
		String roomType = request.getParameter("roomtype");
		System.out.println(checkInDate + "-" + checkOutDate + "-" + roomType);
		CheckAvailabilityDAO checkavailabityDAO = new CheckAvailabilityDAO();
		boolean isAvailabe = checkavailabityDAO.checkAvailability(roomType,checkInDate, checkOutDate);
		System.out.println("Is Available -> " + isAvailabe);
		String message = "Room not available for the requested date";
		if (isAvailabe == true) message = "Room available for the requested date";
		request.setAttribute("message", message);
		request.getRequestDispatcher("/index.jsp").forward(request, response);

	}
}
