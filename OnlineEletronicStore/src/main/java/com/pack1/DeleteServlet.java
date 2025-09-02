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
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet
{
protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	HttpSession session=req.getSession(false);
	if(session==null)
	{
		req.getRequestDispatcher("AdminLogin.html").forward(req, res);
	}
	else {
		String pcode=req.getParameter("pcode");
		ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("al");
		Iterator<ProductBean> i=al.iterator();
		ProductBean pb=null;
		while(i.hasNext())
		{
			pb=i.next();
			if(pcode.equals(pb.getPcode()))
			{
				break;
				
			}
		}
	    pb.setPcode(req.getParameter("pcode"));
	    DeleteProductDAO delete=new DeleteProductDAO();
	    int rowcount=delete.deleteProduct(pb);
	    if(rowcount>0)
	    {
	    	req.setAttribute("msg", "Product Deleted Successfully");
	    	req.getRequestDispatcher("DeleteProduct.jsp").forward(req, res);
	    }
	    else {
	    	req.setAttribute("msg", "Product Deleted Failed");
	    	req.getRequestDispatcher("DeleteProduct.jsp").forward(req, res);
	    }
	    
	}
}
}
