package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/aps")
public class ProductServlet extends HttpServlet
{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	HttpSession session =req.getSession();
	if(session==null)
	{
		req.getRequestDispatcher("AdminLogin.html");
	}
	else {
		ProductBean pb=new ProductBean();
		
		pb.setPcode(req.getParameter("pcode"));
		pb.setPname(req.getParameter("pname"));
		pb.setPcompany(req.getParameter("pcompany"));
		pb.setPprice(req.getParameter("pprice"));
		pb.setPqty(req.getParameter("pqty"));
		ProductDAO DAO=new ProductDAO();
		int rowcount=DAO.insertProductDetails(pb);
		if(rowcount>0)
		{
			req.setAttribute("msg", "Product Details Added Sucessfully");
			req.getRequestDispatcher("ProductServlet.jsp").forward(req, res);
		}
		else {
			req.setAttribute("msg", "Product Data Not Updated");
			req.getRequestDispatcher("ProductServlet.jsp").forward(req, res);
		}
		
	}
}
}
