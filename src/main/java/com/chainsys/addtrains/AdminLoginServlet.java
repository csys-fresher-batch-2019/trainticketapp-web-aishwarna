package com.chainsys.addtrains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.railwayimple.railwayreservationproject.Admin;

public class AdminLoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		Admin a=new Admin();
		String loginMessage=null;
		String Username=request.getParameter("username");
		int Password=Integer.parseInt(request.getParameter("password"));
		try {
			loginMessage=a.Userlogin(Username,Password);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		if(loginMessage.equals("success")) {
			response.sendRedirect("adminhome.jsp");
		}
		else
			response.sendRedirect("home.jsp");
		
	}

}
