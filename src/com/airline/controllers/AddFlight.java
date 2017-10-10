package com.airline.controllers;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.Airplan;
import com.airline.models.Flight;
import com.airline.models.FlightDestination;
import com.airline.services.FlightService;

/**
 * Servlet implementation class AddFlight
 */
@WebServlet("/AddFlight")
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Flight flight;
	private Airplan airplan;
	
	@EJB
	private FlightService flightService;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFlight() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		flight = new Flight();
		airplan = new Airplan();
		
		airplan.setCapacity(new Integer(request.getParameter("seating")));
		airplan.setManufacteror(request.getParameter("manufacturer"));
		airplan.setModel(request.getParameter("model"));		
		
		flight.setAirplan(airplan);
		flight.setDestination(FlightDestination.valueOf(request.getParameter("destination").toUpperCase()));
		flight.setOrigin(FlightDestination.valueOf(request.getParameter("flight_from").toUpperCase()));
		
		flight.setPrice(new Integer(request.getParameter("price")));
		Date date = null;
		try {
			date = new SimpleDateFormat("MM/dd/yyyy h:mm a", Locale.US).parse(request.getParameter("flight_time"));
			System.out.println(date.toString());
		} catch (ParseException e) {
			// TODO Handle the following exception with AJAX (invalid format)
			e.printStackTrace();
		} 
		flight.setTime(date);
		flightService.addFlight(flight, airplan);
	}

}
