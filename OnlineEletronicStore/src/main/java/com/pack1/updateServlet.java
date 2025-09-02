
package com.pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/update")
public class updateServlet extends HttpServlet
{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	HttpSession session=req.getSession(false);
	if(session==null)
	{
		req.getRequestDispatcher("AdminLogin.html");
	}
	else 
	{
		String pcode1=req.getParameter("pcode");
		ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("al");
		Iterator<ProductBean> i =al.iterator();
		ProductBean pb=null;
		while(i.hasNext())
		{
			pb=i.next();
			if(pcode1.equals(pb.getPcode()))
			{
				break;
			}
		}
		pb.setPprice(req.getParameter("pprice"));
		pb.setPqty(req.getParameter("pqty"));
		UpdateDAO DAO=new UpdateDAO();
		int rowcount=DAO.updateData(pb);
		if(rowcount>0) 
		{
			req.setAttribute("msg", "Product Data Updated");
			req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);
		}
		else {
			req.setAttribute("msg", "Product Data Not Updated");
			req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);
		}
		
		
	}
}
}
