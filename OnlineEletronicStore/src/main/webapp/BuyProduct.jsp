<%@page import="com.pack1.ProductBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Electronics</title>
<style>
    body {
        background-image: url("https://thumbs.dreamstime.com/b/wood-table-top-blur-window-glass-wall-background-city-view-montage-product-display-design-key-visual-layout-145736917.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .form-container {
        background: linear-gradient(135deg, #fdf6f0, #e0f7fa); /* soft pastel gradient */
        padding: 35px;
        margin-top: 80px;
        border-radius: 15px;
        width: 420px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.1); /* lighter shadow */
        transition: transform 0.3s ease;
    }

    .form-container:hover {
        transform: scale(1.02);
    }

    .form-container h2 {
        margin-bottom: 20px;
        color: #555;
        font-size: 26px;
        text-align: center;
        font-weight: bold;
    }

    label {
        font-weight: bold;
        display: block;
        margin-top: 12px;
        color: #666;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        border: 2px solid #ccc;
        border-radius: 10px;
        font-size: 16px;
        box-sizing: border-box;
        transition: 0.3s;
        background-color: #fffefc; /* very light background */
        color: #333;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
        border-color: #80cbc4;
        outline: none;
        box-shadow: 0 0 8px rgba(128,203,196,0.5);
    }

    input[readonly] {
        background-color: #f6f6f6;
        color: #555;
    }

    input[type="submit"] {
        width: 100%;
        background: linear-gradient(to right, #a8edea, #fed6e3); /* soft gradient button */
        color: #333;
        border: none;
        padding: 14px;
        font-size: 16px;
        border-radius: 10px;
        cursor: pointer;
        margin-top: 20px;
        font-weight: bold;
        transition: background 0.4s, transform 0.2s;
    }

    input[type="submit"]:hover {
        background: linear-gradient(to right, #fed6e3, #a8edea);
        transform: translateY(-2px);
    }
</style>
</head>
<body>
<center>
    <div class="form-container">
        <h2>Buy Product</h2>
        <%
        ProductBean pb = (ProductBean) request.getAttribute("pbean");
        %>
        <form action="ups" method="post">
            <label>Product Code:</label>
            <input type="text" name="pcode" value="<%=pb.getPcode()%>" readonly>

            <label>Product Name:</label>
            <input type="text" name="pname" value="<%=pb.getPname() %>" readonly>

            <label>Company:</label>
            <input type="text" name="pcom" value="<%=pb.getPcompany()%>" readonly>

            <label>Price:</label>
            <input type="text" name="pprice" value="<%=pb.getPprice() %>" readonly>

            <label>Available Quantity:</label>
            <input type="number" name="pqty" value="<%=pb.getPqty() %>" readonly>

            <label>Enter Quantity to Buy:</label>
            <input type="number" name="rno" min="1" required>

            <input type="submit" value="Buy Now">
        </form>
    </div>
</center>
</body>
</html>
