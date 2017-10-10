package com.airline.models;

import java.io.Serializable;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

/**
 * Entity implementation class for Entity: Airplan
 *
 */
@Entity

public class Airplan implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public Airplan() {
		super();
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	@NotNull
	private String manufacteror;
	
	@NotNull
	private String model;
	
	@Min(20)
	@Max(400)
	private Integer capacity;
	
	@OneToOne(mappedBy = "airplan")
	private Flight flight;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getManufacteror() {
		return manufacteror;
	}

	public void setManufacteror(String manufacteror) {
		this.manufacteror = manufacteror;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public Integer getCapacity() {
		return capacity;
	}

	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}

	
	public Flight getFlight() {
		return flight;
	}

	public void setFlight(Flight flight) {
		this.flight = flight;
	}

	@Override
	public String toString() {
		return "Airplan [id=" + id + ", manufacteror=" + manufacteror + ", model=" + model + ", capacity=" + capacity
				+ ", flight=" + flight + "]";
	}
	
}
