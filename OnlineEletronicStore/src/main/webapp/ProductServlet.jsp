<%@page import="com.pack1.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
  /* Reset some default styles */
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: url('images/pic4.jpg') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .content {
    background: rgba(255, 255, 255, 0.85);
    border-radius: 15px;
    padding: 40px;
    width: 380px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
    text-align: center;
    animation: fadeIn 1s ease-in-out;
  }

  .content h1 {
    font-size: 24px;
    color: #333;
    margin-bottom: 20px;
  }

  .links a {
    display: block;
    margin: 12px 0;
    padding: 10px;
    background: #007BFF;
    color: white;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background 0.3s ease;
  }

  .links a:hover {
    background: #0056b3;
  }

  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(-10px); }
    to { opacity: 1; transform: translateY(0); }
  }
</style>
</head>
<body>
<div class="content">
<%
AdminBean bean = (AdminBean)session.getAttribute("bean");
String data = (String)request.getAttribute("msg");
if(bean != null){
%>
<h1>Welcome, <%= bean.getUname() %></h1>
<p><%= data %></p>
<% } %>

<div class="links">
  <a href="AddProduct.html">Add Product</a>
  <a href="view1">View Products</a>
  <a href="logout1">Log Out</a>
</div>
</div>
</body>
</html>
