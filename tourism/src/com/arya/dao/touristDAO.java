package com.arya.dao;


import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;

import p1.DBconfig;

import com.arya.dto.touristDTO;


public class touristDAO {
	public String food(){
		  
	try{	
		String food=touristDTO.getFood();
		String place=touristDTO.getTourist_place();
		Connection c= DBconfig.getConnection();
		Statement st= c.createStatement();
		ResultSet rs = st.executeQuery("select * from shopdetails where food='"+food+"'and tourist_place='"+place+"'");
		ResultSetMetaData rsmd = rs.getMetaData();

		int columnsNumber = rsmd.getColumnCount();
		                  

		// Iterate through the data in the result set and display it. 

		while (rs.next()) {
		//Print one row          
		for(int i = 1 ; i <= columnsNumber; i++){

		      System.out.println(rs.getString(i) + " ");

		}
		System.out.println();
		}}
	catch(SQLException e)
	{
		
	}
	String ans = null;
	return ans;
	}}
	
	
	
	
	
	