package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ProductDAO 
{


public int insertProductDetails(ProductBean bean)
{
	int rowcount=0;
	try 
	{
		Connection conn=DBConnect.getcon();
		PreparedStatement pstm=conn.prepareStatement("insert into product values(?,?,?,?,?)");
		pstm.setString(1,bean.getPcode());
		pstm.setString(2, bean.getPname());
		pstm.setString(3, bean.getPcompany());
		pstm.setString(4, bean.getPprice());
		pstm.setString(5, bean.getPqty());
		rowcount=pstm.executeUpdate();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return rowcount ;
	
}
}
