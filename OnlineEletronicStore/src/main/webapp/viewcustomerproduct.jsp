<%@page import="com.pack1.CustomerBean" %>
<%@page import="java.util.ArrayList" %>
<%@page import="com.pack1.ProductBean" %>
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
        background: linear-gradient(135deg, #f0f4f8, #dfe9f3);
        margin: 0;
        padding: 20px;
    }

    .greeting {
        text-align: center;
        font-size: 22px;
        font-weight: bold;
        margin-bottom: 25px;
        color: #2c3e50;
    }

    .product-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 20px;
        max-width: 1200px;
        margin: auto;
    }

    .product-card {
        background: white;
        border-radius: 12px;
        padding: 20px;
        text-align: center;
        box-shadow: 0 6px 15px rgba(0,0,0,0.1);
        transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .product-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    }

    .product-name {
        font-size: 18px;
        font-weight: bold;
        color: #34495e;
        margin-bottom: 5px;
    }

    .product-company {
        font-size: 14px;
        color: #7f8c8d;
        margin-bottom: 10px;
    }

    .product-price {
        font-size: 16px;
        font-weight: bold;
        color: #27ae60;
        margin-bottom: 8px;
    }

    .product-qty {
        font-size: 14px;
        color: #555;
        margin-bottom: 15px;
    }

    .buy-btn {
        display: inline-block;
        padding: 8px 16px;
        font-size: 14px;
        font-weight: bold;
        color: white;
        background: linear-gradient(90deg, #27ae60, #2ecc71);
        border-radius: 6px;
        text-decoration: none;
        transition: background 0.3s ease, transform 0.2s ease;
    }

    .buy-btn:hover {
        background: linear-gradient(90deg, #2ecc71, #27ae60);
        transform: scale(1.05);
        box-shadow: 0 4px 10px rgba(0,0,0,0.15);
    }

    .message {
        text-align: center;
        color: #e74c3c;
        font-weight: bold;
        margin-top: 20px;
    }
</style>
</head>
<body>

<%
CustomerBean bean = (CustomerBean)session.getAttribute("bean");
ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("al");
%>

<div class="greeting">
    Hello, <%= bean.getUname() %>! These are your product details:
</div>

<%
if (al == null || al.size() == 0) {
%>
    <div class="message">Product Details are not available.</div>
<%
} else {
%>
    <div class="product-container">
        <%
        for(ProductBean pb : al) {
        %>
        <div class="product-card">
            <div class="product-name"><%= pb.getPname() %></div>
            <div class="product-company"><%= pb.getPcompany() %> | Code: <%= pb.getPcode() %></div>
            <div class="product-price">₹<%= pb.getPprice() %></div>
            <div class="product-qty">Available: <%= pb.getPqty() %></div>
            <a href="buy?pcode=<%= pb.getPcode() %>" class="buy-btn">Buy Now</a>
        </div>
        <% } %>
    </div>
<%
}
%>

</body>
</html>
