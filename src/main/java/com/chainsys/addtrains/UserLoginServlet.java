package com.chainsys.addtrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.railwayimple.railwayreservationproject.Passenger;

public class UserLoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String loginMessage=null;
		Passenger p= new Passenger();
		long  Contact=Long.parseLong(request.getParameter("contactno"));
		int Password=Integer.parseInt(request.getParameter("password"));
	
			
			try {
				loginMessage=p.login(Contact,Password);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			if(loginMessage.equals("success")) {
				response.sendRedirect("DisplayTrainDetails.jsp");
			}
			else
				response.sendRedirect("home.jsp");
	}

}
