package com.staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteShiftServlet")
public class DeleteShiftServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String staffid = request.getParameter("staffid");
		
		boolean isTrue;
		
		IStaffDBUtil SDB = new StaffDBUtil();
		isTrue = SDB.deleteshift(staffid);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("createshift.jsp");
			dispatcher.forward(request, response);
		}
		
		else {
			
			List<Staff> stfDetails = SDB.getStaffDetails(staffid);
			request.setAttribute("stfDetails", stfDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
