package com.model;
import java.sql.*;

public abstract class search {

	public static String date;
	public static String day;
	public static String source;
	public static String destination;
	public static int  passengers;

	
	public static String getQuery() {
		return "SELECT * FROM flight WHERE date='"+date+"' AND source='"+source+"' AND destination ='"+destination+"'";
	}
}
