package com.tcs.controller;
import org.json.simple.JSONObject;


public class Student {

	private String name;
	private String batch;
	private int marks;
	private String email;
	private String city;
	private String contact;
	
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBatch() {
		return batch;
	}

	public void setBatch(String batch) {
		this.batch = batch;
	}

	public int getMarks() {
		return marks;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public Student(String name, String batch, int marks, String email,
			String city, String contact) {
		super();
		this.name = name;
		this.batch = batch;
		this.marks = marks;
		this.email = email;
		this.city = city;
		this.contact = contact;
	}

	public void setMarks(int marks) {
		this.marks = marks;
	}
	
	public JSONObject toJSON(){
		JSONObject obj = new JSONObject();
		obj.put("name", this.getName());
		obj.put("batch", this.getBatch());
		obj.put("marks", this.getMarks());
		obj.put("email",this.getEmail());
		obj.put("city", this.getCity());
		obj.put("contact", this.getContact());
		return obj;
	}
	
	
}
