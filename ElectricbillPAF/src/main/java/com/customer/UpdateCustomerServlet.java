package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String unitsconsumed = request.getParameter("unitsconsumed");
		String billamount = request.getParameter("billamount");
		String date = request.getParameter("date");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updatecustomer(id, name, address, unitsconsumed, billamount, date);
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = CustomerDBUtil.selectAllCustomer();
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("customerupdte.jsp");
			dis.forward(request, response);
		}
		else {
			List<Customer> cusDetails = CustomerDBUtil.selectAllCustomer();
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("customerupdte.jsp");
			dis.forward(request, response);
		}
	}

}
