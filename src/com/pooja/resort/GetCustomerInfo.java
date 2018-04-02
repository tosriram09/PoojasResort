package com.pooja.resort;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pooja.resort.dao.CustomerInfo;
import com.pooja.resort.dao.CustomerInfoDAO;

/**
 * Servlet implementation class GetCustomerInfo
 */
@WebServlet("/GetCustomerInfo")
public class GetCustomerInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCustomerInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roomNbr = request.getParameter("roomnbr");
		CustomerInfoDAO customerInfoDAO = new CustomerInfoDAO();
		CustomerInfo customerInfo = customerInfoDAO.getCustomerDetails(roomNbr);
		request.setAttribute("customerInfo", customerInfo);
		request.getRequestDispatcher("/customerinfo.jsp").forward(request, response);
	}
}