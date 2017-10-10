package com.airline.services;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import com.airline.models.Flight;
import com.airline.models.Passenger;

/**
 * Session Bean implementation class PassengerService
 */
@Stateless
@LocalBean
public class PassengerService{

    /**
     * Default constructor. 
     */
    public PassengerService() {
        // TODO Auto-generated constructor stub
    }
    
    @PersistenceContext(unitName="airline")
    private EntityManager em;
    
    public void addPassenger(Passenger passenger) {
    	em.persist(passenger);
    }
    
    public void removePassenger(Passenger passenger) {
    	em.remove(passenger);
    }
    
    public List<Passenger> getPassengers(){
    	
    	TypedQuery<Passenger> query = em.createQuery("SELECT p FROM Passenger p", Passenger.class); 
    	List<Passenger> pList = query.getResultList();
    	return pList;
    }
    
    public Passenger getPassenger(String id) {
    	return (Passenger) em.createQuery("SELECT p FROM Passenger p WHERE p.id= :id", Passenger.class)
    			.setParameter("id", Integer.parseInt(id)).getSingleResult();
    }

	public void addFlightToPassenger(String passengerId, Flight flight) {
		Passenger passenger = em.find(Passenger.class, new Integer(passengerId));
		passenger.getFlights().add(flight);
	}

}
