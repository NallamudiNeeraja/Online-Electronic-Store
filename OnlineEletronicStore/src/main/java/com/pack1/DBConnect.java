package com.pack1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect 
{
	private static Connection conn=null;
	private DBConnect() {}
	static {
	try 
	{
		Class.forName(DBInfo.Driver);
		conn=DriverManager.getConnection(DBInfo.dbUrl,DBInfo.dbUsername,DBInfo.dbPassword);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	public static Connection getcon()
	{
		return conn;
		
	}
}
