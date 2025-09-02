<%@page import="com.pack1.CustomerBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Home</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #d9a7c7, #fffcdc);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .container {
        background-color: white;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
    }

    h2 {
        margin-bottom: 30px;
        color: #333;
    }

    .error {
        color: red;
        font-weight: bold;
        margin-bottom: 20px;
    }

    a {
        display: inline-block;
        margin: 15px;
        padding: 12px 24px;
        text-decoration: none;
        color: white;
        background-color: #4CAF50;
        border-radius: 8px;
        font-weight: bold;
        transition: 0.3s ease;
    }

    a:hover {
        background-color: #388e3c;
    }
</style>
</head>
<body>
<div class="container">
<%
CustomerBean bean = (CustomerBean)session.getAttribute("bean");

if (bean == null) {
    String data = (String) request.getAttribute("msg");
    if (data != null) {
%>
    <div class="error"><%= data %></div>
    <a href="customerLogin.html">Back to Login</a>
<%
    }
} else {
%>
    <h2>Welcome, <%= bean.getUname() %></h2>
    <a href="view">View Products</a>
    <a href="logout1">Log Out</a>
<%
}
%>
</div>
</body>
</html>
