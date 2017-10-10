package com.airline.controllers;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.Pilot;
import com.airline.models.PilotRank;
import com.airline.services.FlightService;
import com.airline.services.PilotService;

/**
 * Servlet implementation class AddPilotToFlight
 */
@WebServlet("/AddPilotToFlight")
public class AddPilotToFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	FlightService fs;
	@EJB
	PilotService ps;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPilotToFlight() {
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
		
		Pilot pilot = new Pilot();
		pilot.setFirstName(request.getParameter("fist_name"));
		pilot.setLastName(request.getParameter("last_name"));
		pilot.setLiciense(Integer.parseInt(request.getParameter("license")));
		pilot.setRank(PilotRank.valueOf(request.getParameter("pilot_rank").toUpperCase()));
		pilot.setFlight(fs.getFlight(request.getParameter("flight_id")));
		ps.addPilot(pilot);
	}

}
