package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerRegisterDAO 
{
public int InsertData(CustomerBean cb) 
{
	int rowcount=0;
	try {
	Connection conn=DBConnect.getcon();
	PreparedStatement pstm=conn.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
	pstm.setString(1, cb.getUname());
	pstm.setString(2, cb.getPassword());
	pstm.setString(3, cb.getFname());
	pstm.setString(4, cb.getLname());
	pstm.setString(5, cb.getAddress());
	pstm.setString(6, cb.getMailid());
	pstm.setString(7, cb.getPhonenumber());
	rowcount=pstm.executeUpdate();
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return rowcount;
}

}
