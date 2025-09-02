<%@page import="com.pack1.ProductBean" %>
<%@page import="java.util.ArrayList" %>
<%@page import="com.pack1.AdminBean" %>
<%@page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>

<style>
  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: #f4f7f9;
    padding: 40px;
  }

  center {
    display: block;
  }

  h2 {
    color: #333;
    margin-bottom: 20px;
  }

  table {
    border-collapse: collapse;
    width: 80%;
    margin: auto;
    background-color: #fff;
   
    border-radius: 10px;

  }

  th, td {
    padding: 12px 15px;
    text-align: center;
    border-bottom: 1px solid #ddd;
  }

  th {
    background-color: #3498db;
    color: white;
    font-weight: normal;
  }

  tr:hover {
    background-color: #f1f1f1;
  }

  .message {
    color: #e74c3c;
    font-weight: bold;
    text-align: center;
    margin-top: 30px;
  }

  .greeting {
    text-align: center;
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 30px;
    color: #2c3e50;
  }
</style>
</head>
<body>
<center>
<%
AdminBean bn = (AdminBean)session.getAttribute("bean");
ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("al");
out.println("<div class='greeting'>Hello, " + bn.getUname() + "! These are your product details:</div>");

if (al == null || al.size() == 0) {
    out.println("<div class='message'>Product Details are not available.</div>");
} else {
    out.println("<table>");
    out.println("<tr><th>Product Code</th><th>Company</th><th>Name</th><th>Price</th><th>Quantity</th><th>Details</th></tr>");
    Iterator<ProductBean> i = al.iterator();
    while(i.hasNext()) {
        ProductBean pb = i.next();
        out.println("<tr>");
        out.println("<td>" + pb.getPcode() + "</td>");
        out.println("<td>" + pb.getPcompany() + "</td>");
        out.println("<td>" + pb.getPname() + "</td>");
        out.println("<td>" + pb.getPprice() + "</td>");
        out.println("<td>" + pb.getPqty() + "</td>");
        out.println("<td>" + "<a href='edit?pcode=" + pb.getPcode() + "'>Edit</a> | "
        	    + "<a href='delete?pcode=" + pb.getPcode() + "'>Delete</a>"
        	    + "</td>");
        out.println("</tr>");
    }
    out.println("</table>");
}
%>
</center>
</body>
</html>
