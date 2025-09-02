package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLoginDAO 
{
public AdminBean checkAdminLogin(String uname,String password)
{
	AdminBean ad=null;
	try
	{
		Connection conn=DBConnect.getcon();
		PreparedStatement pstm=conn.prepareStatement("select * from admin1 where uname=? AND password=?");
		pstm.setString(1, uname);
		pstm.setString(2, password);
		ResultSet rs=pstm.executeQuery();
		if(rs.next())
		{
			ad=new AdminBean();
			ad.setUname(rs.getString(1));
			ad.setPassword(rs.getString(2));
			ad.setFName(rs.getString(3));
			ad.setLName(rs.getString(4));
			ad.setAddress(rs.getString(5));
			ad.setMailId(rs.getString(6));
			ad.setPhoneNumber(rs.getString(7));
		}
		
	}
	catch(Exception e)
	{
	e.printStackTrace();	
	}
	return ad;
}
}
