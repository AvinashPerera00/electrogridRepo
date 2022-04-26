package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerServlet")
public class UpdatePaymentServlet<payinsert> extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid = request.getParameter("pid");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String unitsconsumed = request.getParameter("unitsconsumed");
		String billamount = request.getParameter("billamount");
		String status = request.getParameter("status");
		
		boolean isTrue;
		
		isTrue = payDBUtil.payinsert(pid, name, address, unitsconsumed, billamount, status);
		
		if(isTrue == true) {
			
	
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
		
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
