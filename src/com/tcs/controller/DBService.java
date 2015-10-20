package com.tcs.controller;
import java.util.ArrayList;

import org.json.simple.JSONObject;


public class DBService {
	public static ArrayList<Student> getStudents(){
		
		ArrayList<Student> sList = new ArrayList<Student>();
		sList.add(new Student("Pankaj","aja30",10,"pankaj.t4@tcs.com","Sagar","9898989898"));
		sList.add(new Student("Irfan","aja31",10,"irfan@tcs.com","Nagpur","9878667788"));
		sList.add(new Student("Shrinivas","aja31",10,"shrinivas@tcs.com","Bangluru","8876776688"));
		sList.add(new Student("Nitin","aja31",10,"nithin.p@tcs.com","Ahmedabad","789987789"));
		sList.add(new Student("Shruti","aja31",10,"shruti.d@tcs.com","Mumbai","789987789"));
		
		return sList;
	}
	
	public static ArrayList<JSONObject> getJSONStudents(){
		ArrayList<Student> sList = DBService.getStudents();
		ArrayList<JSONObject> jList = new ArrayList<JSONObject>();
		
		for(Student s : sList){
			jList.add(s.toJSON());
		}
		
		return jList;
	}
}
