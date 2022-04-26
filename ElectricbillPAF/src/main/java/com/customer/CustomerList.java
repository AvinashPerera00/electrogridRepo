package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerList")
public class CustomerList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		List<Customer> cusDetails = CustomerDBUtil.selectAllCustomer();
		request.setAttribute("cusDetails", cusDetails);
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("customertabl.jsp");
		dis.forward(request, response);
	}

}
