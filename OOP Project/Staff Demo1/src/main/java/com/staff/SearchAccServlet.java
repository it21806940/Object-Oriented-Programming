package com.staff;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SearchAccServlet")
public class SearchAccServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String staffid = request.getParameter("staffid");
		boolean isTrue;
		
		IStaffDBUtil SDB = new StaffDBUtil();
		isTrue = SDB.validate(staffid);
		
		if(isTrue == true) {
			List<Staff> stfDetails = SDB.getStaff(staffid);
			request.setAttribute("stfDetails", stfDetails);
			
			RequestDispatcher dis =request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
			
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('The Staff ID you entered is incorrect!');");
			out.println("location='searchacc.jsp'");
			out.println("</script>");
			
		}
	}

}
