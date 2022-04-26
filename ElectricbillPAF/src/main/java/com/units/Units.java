package com.units;

public class Units {
	
	private int id;
	private String name;
	private String date;
	private String time;
	private String unitamount;
	private String period;
	private String area;
	
	
	public Units(int id, String name, String date, String time, String unitamount, String period, String area) {
		
		this.id = id;
		this.name = name;
		this.date = date;
		this.time = time;
		this.unitamount = unitamount;
		this.period = period;
		this.area = area;
	}


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getDate() {
		return date;
	}


	public String getTime() {
		return time;
	}


	public String getUnitamount() {
		return unitamount;
	}


	public String getPeriod() {
		return period;
	}


	public String getArea() {
		return area;
	}


	
	
	
	

}
