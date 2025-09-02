<%@page import="com.pack1.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>
<style>
  body {
    margin: 0;
    padding: 0;
    background: linear-gradient(135deg, #e8e0f0, #f3effd);
    font-family: 'Segoe UI', sans-serif;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
  }

  .card {
    background: rgba(255, 255, 255, 0.85);
    backdrop-filter: blur(8px);
    border-radius: 20px;
    padding: 40px 30px;
    width: 420px;
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.12);
    text-align: center;
    border: 1px solid #ddd6f3;
  }

  .greeting {
    font-size: 24px;
    font-weight: bold;
    color: #5a189a;
    margin-bottom: 15px;
  }

  .msg {
    background-color: #ede9f5;
    padding: 15px;
    border-radius: 12px;
    color: #4a148c;
    border: 1px solid #cbbde2;
    margin-bottom: 30px;
    font-size: 16px;
  }

  .btn {
    display: inline-block;
    text-decoration: none;
    background-color: #9d4edd;
    color: white;
    padding: 10px 20px;
    margin: 6px;
    border-radius: 8px;
    transition: 0.3s;
    font-weight: 500;
  }

  .btn:hover {
    background-color: #7b2cbf;
  }
</style>
</head>
<body>
<%
    AdminBean bean = (AdminBean)session.getAttribute("bean");
    String data = (String)request.getAttribute("msg");
%>
<div class="card">
  <div class="greeting">Hello, <%= bean.getUname() %> 👋</div>
  <div class="msg"><%= data %></div>

  <a href="AddProduct.html" class="btn">➕ Add Product</a>
  <a href="view1" class="btn">📦 View Products</a>
  <a href="logout1" class="btn">🚪 Log Out</a>
</div>
</body>
</html>
