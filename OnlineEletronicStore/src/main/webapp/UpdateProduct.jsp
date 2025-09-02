<%@page import="com.pack1.AdminBean" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        background: linear-gradient(135deg, #dfe4f3, #f2f4fb); /* cooler lavender-gray theme */
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .dashboard-box {
        background-color: #ffffff;
        padding: 40px 30px;
        border-radius: 18px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        width: 400px;
        text-align: center;
    }

    h2 {
        color: #5d5fef;
        margin-bottom: 16px;
        font-size: 24px;
    }

    .message {
        font-size: 15px;
        color: #4a4a68;
        margin-bottom: 30px;
    }

    .nav-links a {
        display: block;
        text-decoration: none;
        color: white;
        background-color: #8e9ddc; /* soft purple-blue */
        margin: 12px auto;
        width: 75%;
        padding: 12px;
        border-radius: 10px;
        font-weight: 500;
        font-size: 14px;
        transition: 0.3s ease;
    }

    .nav-links a:hover {
        background-color: #6c7fd0;
    }
</style>
</head>
<body>

<%
AdminBean bean = (AdminBean)session.getAttribute("bean");
String data = (String)request.getAttribute("msg");
%>

<div class="dashboard-box">
    <h2>Hello, <%= bean.getUname() %>!</h2>
    <div class="message"><%= data %></div>

    <div class="nav-links">
        <a href="AddProduct.html">Add Product</a>
        <a href="view1">View Products</a>
        <a href="logout1">Log Out</a>
    </div>
</div>

</body>
</html>
