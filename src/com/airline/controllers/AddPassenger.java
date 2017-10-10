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

import com.airline.models.FlightClass;
import com.airline.models.Gender;
import com.airline.models.Passenger;
import com.airline.services.PassengerService;

/**
 * Servlet implementation class AddPassenger
 */
@WebServlet("/AddPassenger")
public class AddPassenger extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private PassengerService passengerService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPassenger() {
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
		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getParameter("first_name_passenger"));
		passenger.setLastName(request.getParameter("last_name_passenger"));
		passenger.setGender(Gender.valueOf(request.getParameter("passenger_gender").toUpperCase()));
		Date date = null;
		try {
			date = new SimpleDateFormat("MM/dd/yyyy", Locale.US).parse(request.getParameter("date"));
		} catch (ParseException e) {
			//TODO handle the following exception with AJAX (invalid format exception)
			e.printStackTrace(); 
		}
		passenger.setDob(date);
		passenger.setFlightClass(FlightClass.valueOf(request.getParameter("flight_class").toUpperCase()));
		passengerService.addPassenger(passenger);
		System.out.print(passenger);
	}

}
