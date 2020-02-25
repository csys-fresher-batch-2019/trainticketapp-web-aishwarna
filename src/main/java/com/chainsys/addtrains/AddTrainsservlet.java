package com.chainsys.addtrains;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.railwayimple.railwayreservationproject.Trains;
import com.railwayimple.railwayreservationproject.traindao;


public class AddTrainsservlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Trains t=new Trains();
		
		String a1= request.getParameter("trainname");
		t.setTrainname(a1);
		System.out.println(a1);
		
		int a2=Integer.parseInt(request.getParameter("Trainid"));
		System.out.println(a2);
		t.setTrainid(a2);
		
		String a3=request.getParameter("source");
		System.out.println(a3);
		t.setJourneystarts(a3);
	    
	    String a4=request.getParameter("destination");
	    t.setJourneyends(a4);
	    System.out.println(a4);
	    String date = request.getParameter("depaturetime");
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-ddHH:mm:ss");
	    LocalDateTime d = LocalDateTime.parse(date,formatter);
	    t.setDepaturetime(d);
	    System.out.println(d);
	    String date1 = request.getParameter("arrivaltime");
	    DateTimeFormatter formatt = DateTimeFormatter.ofPattern("yyyy-MM-ddHH:mm:ss");
	    LocalDateTime a = LocalDateTime.parse(date1,formatt);
	    String a5=request.getParameter("birth");
	    System.out.println(a5);
	    t.setArrivaltime(a);
	    System.out.println(a);
	    t.setBirthtype(request.getParameter("birth"));
	    t.insertTrains(t);	
	    System.out.println("inserted servlet:" + t);
		   response.sendRedirect("adminhome.jsp");


	}

	

}
