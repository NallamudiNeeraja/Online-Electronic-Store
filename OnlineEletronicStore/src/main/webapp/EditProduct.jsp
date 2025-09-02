<%@page import="com.pack1.AdminBean" %>
<%@page import="com.pack1.ProductBean" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Product</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #f3e5f5, #e1bee7); /* Soft lavender gradient */
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .form-container {
        background-color: #ffffff;
        padding: 35px;
        border-radius: 20px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        width: 400px;
        max-width: 90%;
    }

    .form-container h2 {
        text-align: center;
        color: #6a1b9a;
        margin-bottom: 10px;
    }

    .greeting {
        text-align: center;
        color: #7b1fa2;
        margin-bottom: 25px;
        font-size: 15px;
    }

    .form-group {
        margin-bottom: 18px;
    }

    label {
        display: block;
        font-weight: 600;
        color: #4a148c;
        margin-bottom: 6px;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px 12px;
        border: 1px solid #d1c4e9;
        border-radius: 8px;
        background-color: #fdf9ff;
        font-size: 14px;
        transition: 0.3s;
    }

    input[type="text"]:focus {
        border-color: #ab47bc;
        background-color: #ffffff;
        outline: none;
        box-shadow: 0 0 6px rgba(171, 71, 188, 0.3);
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 8px;
        background-color: #ba68c8;
        color: white;
        font-size: 15px;
        font-weight: bold;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #9c27b0;
    }
</style>
</head>
<body>

<%
AdminBean bn = (AdminBean)session.getAttribute("bean");
ProductBean pb = (ProductBean)request.getAttribute("pbean");
%>

<div class="form-container">
    <h2>Edit Product</h2>
    <div class="greeting">Hello <%= bn.getUname() %>, please update product details:</div>

    <form action="update" method="post">
        <div class="form-group">
            <label for="pprice">Product Price</label>
            <input type="text" name="pprice" id="pprice" value="<%=pb.getPprice()%>">
        </div>

        <div class="form-group">
            <label for="pqty">Product Quantity</label>
            <input type="text" name="pqty" id="pqty" value="<%=pb.getPqty()%>">
        </div>

        <input type="hidden" name="pcode" value="<%=pb.getPcode()%>">

        <input type="submit" value="Update Product">
    </form>
</div>

</body>
</html>
