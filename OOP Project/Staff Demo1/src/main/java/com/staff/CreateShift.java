package com.staff;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CreateShift")
public class CreateShift extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String staffname = request.getParameter("staffname");
		String workdate = request.getParameter("workdate");
		String startwork = request.getParameter("startwork");
		String endwork = request.getParameter("endwork");
		
		
		
		boolean isTrue;
		
		IStaffDBUtil SDB = new StaffDBUtil();
		isTrue = SDB.shiftcreate(staffname, workdate, startwork, endwork);
		
		response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	    out.println("<html><body>");
		
		if(isTrue) {
			RequestDispatcher dis2 = request.getRequestDispatcher("success.jsp");
			dis2.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
