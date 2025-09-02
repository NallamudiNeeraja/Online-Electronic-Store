package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewProductDAO 
{
ArrayList<ProductBean>al=new ArrayList<ProductBean>();
public ArrayList<ProductBean> viewData()
{
	try 
	{
		Connection conn=DBConnect.getcon();
		PreparedStatement pstm=conn.prepareStatement("select * from product");
		ResultSet rs=pstm.executeQuery();
		while(rs.next())
		{
		ProductBean	bean=new ProductBean();
		bean.setPcode(rs.getString(1));
		bean.setPname(rs.getString(2));
		bean.setPcompany(rs.getString(3));
		bean.setPprice(rs.getString(4));
		bean.setPqty(rs.getString(5));
		al.add(bean);
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return al;
	
}
}
