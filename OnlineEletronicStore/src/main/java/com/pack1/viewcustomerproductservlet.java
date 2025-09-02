package com.pack1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/view")
public class viewcustomerproductservlet extends HttpServlet
{
protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	HttpSession session=req.getSession(false);
	if(session==null)
	{
		req.getRequestDispatcher("customerLogin.html").forward(req, res);
	}
	else 
	{
		viewcustomerproductDAO DAO=new viewcustomerproductDAO();
		ArrayList<ProductBean>al=DAO.viewCustomerData();
		session.setAttribute("al", al);
		req.getRequestDispatcher("viewcustomerproduct.jsp").forward(req, res);
	}
}
}
