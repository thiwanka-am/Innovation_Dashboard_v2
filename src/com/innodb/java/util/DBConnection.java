package com.innodb.java.util;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {
	private Connection connect = null;
	public Connection createNewConnection() throws Exception{
		try {
		      // this will load the MySQL driver, each DB has its own driver
		      Class.forName("com.mysql.jdbc.Driver");
		      // setup the connection with the DB.
		      connect = DriverManager.getConnection("jdbc:mysql://localhost/innovation_db?user=root&password=abc123");
		      
		    } catch (Exception e) {
		      e.printStackTrace();
		      return null;
		    } finally {
		    	closeConnection(connect);
		    }
		return connect;
	}
	
	public void closeConnection(Connection c) {
	    try {
	      if (c != null) {
	        c.close();
	      }
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
	  }
	
}
