package com.customer;

public class Customer {
	
	private int id;
	private String name;
	private String address;
	private String unitsconsumed;
	private String billamount;
	private String date;
	
	
	public Customer(int id, String name, String address, String unitsconsumed, String billamount, String date) {
		
		this.id = id;
		this.name = name;
		this.address = address;
		this.unitsconsumed = unitsconsumed;
		this.billamount = billamount;
		this.date = date;
	}


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getAddress() {
		return address;
	}


	public String getUnitsconsumed() {
		return unitsconsumed;
	}


	public String getBillamount() {
		return billamount;
	}


	public String getDate() {
		return date;
	}



	

}
