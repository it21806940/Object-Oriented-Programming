package com.staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateShiftServlet")
public class UpdateShiftServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String staffid = request.getParameter("staffid");
		String staffname = request.getParameter("staffname");
		String workdate = request.getParameter("workdate");
		String startwork = request.getParameter("startwork");
		String endwork = request.getParameter("endwork");
		
		
		boolean IsTrue;
		
		IStaffDBUtil SDB = new StaffDBUtil();
		IsTrue = SDB.updateshift(staffid, staffname, workdate, startwork, endwork);
		
		if(IsTrue == true) {
			
			List<Staff> stfDetails = SDB.getStaffDetails(staffid);
			request.setAttribute("stfDetails", stfDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Staff> stfDetails = SDB.getStaffDetails(staffid);
			request.setAttribute("stfDetails", stfDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		
	}

}
