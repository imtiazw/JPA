package com.airline.models;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Pilot
 *
 */
@NamedQuery(name= "pilot.selectAPilot", query= "SELECT p FROM Pilot p where p.id = :id")
@Entity
public class Pilot implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public Pilot() {
		super();
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private String firstName;
	
	private String lastName;
	
	private Integer liciense;
	
	@Enumerated(value = EnumType.STRING)
	private PilotRank rank;
	
	@ManyToOne
	@JoinColumn(name = "flight_fk")
	private Flight flight;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Integer getLiciense() {
		return liciense;
	}

	public void setLiciense(Integer liciense) {
		this.liciense = liciense;
	}

	public PilotRank getRank() {
		return rank;
	}

	public void setRank(PilotRank rank) {
		this.rank = rank;
	}

	public Flight getFlight() {
		return flight;
	}

	public void setFlight(Flight flight) {
		this.flight = flight;
	}

	@Override
	public String toString() {
		return "Pilot [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", liciense=" + liciense
				+ ", rank=" + rank + ", flight=" + flight + "]";
	}
   
}
