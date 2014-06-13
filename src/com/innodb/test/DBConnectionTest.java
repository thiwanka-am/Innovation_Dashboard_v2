package com.innodb.test;

import com.innodb.java.util.DBConnection;

import junit.framework.TestCase;

public class DBConnectionTest extends TestCase{
	public void testSetUp(){
		DBConnection connection=new DBConnection();
		try {
			assertNotNull(connection.createNewConnection());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
