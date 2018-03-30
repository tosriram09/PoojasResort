package com.pooja.resort;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pooja.resort.dao.AddRoomServiceDAO;

/**
 * Servlet implementation class AddRoomService
 */
@WebServlet("/AddRoomService")
public class AddRoomService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddRoomService() {
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
		int roomNumber = Integer.parseInt(request.getParameter("roomnumber"));
		String serviceName = request.getParameter("servicename");
		int cost = Integer.parseInt(request.getParameter("cost"));

		AddRoomServiceDAO roomServiceDAO = new AddRoomServiceDAO();
		roomServiceDAO.addRoomService(roomNumber, serviceName, cost);
		
		String message = "Room Service Added for Room: " + roomNumber;
		request.setAttribute("message", message);
		request.getRequestDispatcher("/roomservice.jsp").forward(request, response);
	}

}
