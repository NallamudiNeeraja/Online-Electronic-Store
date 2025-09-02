package com.pack1;

public interface DBInfo 
{
	public static final String Driver="oracle.jdbc.OracleDriver";
	 public static final String dbUrl="jdbc:oracle:thin:@localhost:1521/orcl";
	 public static final String dbUsername="system";
	 public static final String dbPassword="12345";
	  //inside interface every variable is public static final
}
