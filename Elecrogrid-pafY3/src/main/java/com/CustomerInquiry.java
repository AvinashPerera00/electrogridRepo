package com;

public class CustomerInquiry {
	
	public int id;
	public String username;
	public String phonenumber;
	public String title;
	public String inquiry;
	
	public CustomerInquiry(int id, String username, String phonenumber, String title, String inquiry) {
		super();
		this.id = id;
		this.username = username;
		this.phonenumber = phonenumber;
		this.title = title;
		this.inquiry = inquiry;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getInquiry() {
		return inquiry;
	}
	public void setInquiry(String inquiry) {
		this.inquiry = inquiry;
	}
	
	
}
