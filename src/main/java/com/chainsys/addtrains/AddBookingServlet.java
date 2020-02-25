package com.chainsys.addtrains;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.railwayimple.railwayreservationproject.BookingDetails;
import com.railwayimple.railwayreservationproject.Passenger;
import com.railwayimple.railwayreservationproject.Trains;
import com.railwayimple.railwayreservationproject.passengerdao;
import com.railwayimple.railwayreservationproject.traindao;

public class AddBookingServlet extends HttpServlet {
	//private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookingDetails bd=new BookingDetails();
	   bd.setTr_id(Integer.parseInt(request.getParameter("trainid")));
	   bd.setPn_id(Integer.parseInt(request.getParameter("passengerid")));
	    bd.setCoach_type(request.getParameter("coachtype"));
	    bd.setBirth_type(request.getParameter("birthtype"));
	    bd.setTravel_date(java.sql.Date.valueOf(request.getParameter("travel_date")));
	    bd.AddBookingDetail(bd);	
	    System.out.println("inserted servlet:" + bd);
	   response.sendRedirect("reserved.jsp");
	}
	
	}


