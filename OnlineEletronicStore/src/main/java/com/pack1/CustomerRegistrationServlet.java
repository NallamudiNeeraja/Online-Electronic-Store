package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/cres")
public class CustomerRegistrationServlet extends HttpServlet
{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
  CustomerBean cb=new CustomerBean();
  cb.setUname(req.getParameter("uname"));
  cb.setPassword(req.getParameter("pswd"));
  cb.setFname(req.getParameter("fname"));
  cb.setLname(req.getParameter("lname"));
  cb.setAddress(req.getParameter("add"));
  cb.setMailid(req.getParameter("mid"));
  cb.setPhonenumber(req.getParameter("num"));
  CustomerRegisterDAO DAO=new CustomerRegisterDAO();
  int rowcount=DAO.InsertData(cb);
  if(rowcount>0)
  {
	  req.getRequestDispatcher("customerLogin.html").forward(req, res);
  }
  else {
	  req.setAttribute("msg", "Registration Failed. Please try again.");
      req.getRequestDispatcher("CustomerRegister.html").forward(req, res);
  }
  
    
}
}
