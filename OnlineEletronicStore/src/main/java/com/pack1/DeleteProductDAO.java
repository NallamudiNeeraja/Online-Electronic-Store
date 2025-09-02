package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO 
{
public int deleteProduct(ProductBean pb)
{
int rowcount=0;
	try 
	{
		Connection conn=DBConnect.getcon();
		PreparedStatement pstm=conn.prepareStatement("Delete from Product where pcode=?");
		pstm.setString(1, pb.getPcode());
		rowcount=pstm.executeUpdate();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return rowcount;
}
}
