package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/creg")
public class CustomerLoginServlet extends HttpServlet
{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	CustomerLoginDAO DAO=new CustomerLoginDAO();
	CustomerBean bean=DAO.LoginDetails(req.getParameter("uname"),req.getParameter("pswd"));
	if(bean==null)
	{
		req.setAttribute("msg", "Invalid Admin Credentials");
		req.getRequestDispatcher("CustomerHome.jsp").forward(req, res);
	}
	else 
	{
		HttpSession session=req.getSession();
		session.setAttribute("bean", bean);
		req.getRequestDispatcher("CustomerHome.jsp").forward(req, res);
	}
}
}
