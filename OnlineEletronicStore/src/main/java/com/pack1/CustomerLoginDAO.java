package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO {
public CustomerBean LoginDetails(String uname, String password) 
{
	CustomerBean cb=null;
	try
	{
		Connection conn=DBConnect.getcon();
		PreparedStatement pstm=conn.prepareStatement("select * from customer where uname=? AND password=?");
		pstm.setString(1, uname);
		pstm.setString(2, password);
		ResultSet rs=pstm.executeQuery();
		if(rs.next())
		{
			cb=new CustomerBean();
			cb.setUname(rs.getString(1));
			cb.setPassword(rs.getString(2));
			cb.setFname(rs.getString(3));
			cb.setLname(rs.getString(4));
			cb.setAddress(rs.getString(5));
			cb.setMailid(rs.getString(6));
			cb.setPhonenumber(rs.getString(7));
			
			
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return cb;
		
	
}

}
