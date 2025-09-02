<%@page import="com.pack1.CustomerBean" %>
<%@page import="java.util.ArrayList" %>
<%@page import="com.pack1.ProductBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Confirmation</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #e0c3fc, #8ec5fc);
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .box {
        background-color: white;
        padding: 40px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
    }

    h2 {
        margin-bottom: 20px;
        color: #333;
    }

    p {
        font-size: 18px;
        margin: 10px 0;
    }

    .error {
        color: red;
        font-weight: bold;
    }

    .success {
        color: green;
        font-weight: bold;
    }

    a {
        display: inline-block;
        margin: 15px 10px;
        padding: 10px 20px;
        text-decoration: none;
        background-color: #4CAF50;
        color: white;
        border-radius: 8px;
        font-weight: bold;
        transition: 0.3s;
    }

    a:hover {
        background-color: #388e3c;
    }
</style>
</head>
<body>
<div class="box">
<%
CustomerBean bean = (CustomerBean)session.getAttribute("bean");
ProductBean pb = (ProductBean)session.getAttribute("pb");
Integer reqQty = (Integer)session.getAttribute("reqQty");
String msg = (String)request.getAttribute("msg");
%>

    <h2>Order Confirmation</h2>
    <p><strong>Hello, <%= bean.getUname() %></strong></p>

    <%
    if(msg != null && msg.contains("successfully")) {
        int price = Integer.parseInt(pb.getPprice());
        int total = price * reqQty;
    %>
        <p>You have been charged: <strong>₹<%= total %></strong></p>
        <p class="success"><%= msg %></p>
    <%
    } else {
    %>
        <p class="error"><%= msg %></p>
    <%
    }
    %>

    <a href="view">View More Products</a>
    <a href="logout1">Log Out</a>
</div>
</body>
</html>
