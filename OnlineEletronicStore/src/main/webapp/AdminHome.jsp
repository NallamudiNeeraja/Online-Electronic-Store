<%@page import="com.pack1.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', sans-serif;
        background: url('images/bg.jpg') no-repeat center center fixed;
        background-size: cover;
        color: #333;
    }

    .container {
        text-align: center;
        margin-top: 120px;
        background: rgba(255, 255, 255, 0.6);
        backdrop-filter: blur(10px);
        padding: 40px 50px;
        display: inline-block;
        border-radius: 15px;
        box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
        animation: fadeIn 0.7s ease-in-out;
    }

    h2 {
        margin-bottom: 30px;
        color: #222;
        font-size: 28px;
        font-weight: bold;
    }

    a {
        display: inline-block;
        margin: 10px 15px;
        padding: 12px 25px;
        background: linear-gradient(90deg, #ff7e5f, #feb47b);
        color: white;
        text-decoration: none;
        font-weight: bold;
        border-radius: 8px;
        transition: 0.3s ease;
    }

    a:hover {
        background: linear-gradient(90deg, #feb47b, #ff7e5f);
        transform: translateY(-3px);
        box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    .error {
        color: white;
        background-color: #e53935;
        padding: 10px 20px;
        border-radius: 6px;
        font-weight: bold;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
</head>
<body>
<center>
<div class="container">
<%
AdminBean bean = (AdminBean) session.getAttribute("bean");
if (bean == null) {
    String data = (String) request.getAttribute("msg");
%>
    <div class="error"><%= data %></div>
<%
} else {
%>
    <h2>Welcome, <%= bean.getUname() %></h2>
    <a href="AddProduct.html">Add Product</a>
    <a href="view1">View Products</a>
    <a href="logout1">Log Out</a>
<%
}
%>
</div>
</center>
</body>
</html>
