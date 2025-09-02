package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/alog")
public class AdminLoginServlet extends HttpServlet
{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	AdminLoginDAO DAO=new AdminLoginDAO();
	AdminBean bean=DAO.checkAdminLogin(req.getParameter("uname"),req.getParameter("pswd"));
	if(bean==null)
	{
		req.setAttribute("msg", "Invalid Admin Credentials");
		req.getRequestDispatcher("AdminHome.jsp").forward(req, res);
	}
	else {
		HttpSession session=req.getSession();
		session.setAttribute("bean", bean);
		req.getRequestDispatcher("AdminHome.jsp").forward(req, res);
	}
}
}
