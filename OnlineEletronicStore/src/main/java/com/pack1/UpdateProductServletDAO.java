package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductServletDAO 
{
public int updateData(ProductBean pb)
{
	int rowcount=0;
	try 
	{
		Connection conn=DBConnect.getcon();
		PreparedStatement pstm=conn.prepareStatement("update product set pqty=? where pcode=?");
		pstm.setString(1, pb.getPqty());
		pstm.setString(2, pb.getPcode());
		rowcount=pstm.executeUpdate();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return rowcount;
	
}
}
