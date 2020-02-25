package com.chainsys.addtrains;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.railwayimple.railwayreservationproject.Passenger;

@SuppressWarnings("serial")
public class AddPassengerServlet extends HttpServlet {
	//private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Passenger p=new Passenger();
		
		p.setPassenger_name(request.getParameter("passengername"));
	    p.setGender(request.getParameter("gender"));
	    p.setContact_number(Long.parseLong(request.getParameter("contactno")));
	    p.setAdhar_number(Long.parseLong(request.getParameter("Adharno")));
	    p.setPassword(Integer.parseInt(request.getParameter("password")));
	    p.addpassenger(p);	
	    //System.out.println("inserted servlet:" + p);
	   response.sendRedirect("UserLogin.jsp");
	}
	
	}


