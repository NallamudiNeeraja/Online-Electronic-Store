<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout Message</title>
<style>
body {
    background-color: #f0f8ff; /* light blue background */
    font-family: Arial, sans-serif;
}
h2 {
    color: #333;
    background-color: #e0f7fa;
    padding: 20px;
    border-radius: 10px;
    display: inline-block;
    border: 1px solid #81d4fa;
    text-align: center;
}
a {
    display: block;
    margin-top: 20px;
    text-decoration: none;
    font-weight: bold;
    color: white;
    background-color: #0288d1;
    padding: 10px 20px;
    border-radius: 5px;
    width: 20%;
    margin-left: auto;
    margin-right: auto;
}
a:hover {
    background-color: #0277bd;
}
</style>
</head>
<body>
<center>
<h2>
<%
String data = (String) request.getAttribute("msg");
out.println(data + "<br><br>");
%>
<a href="index.html">Login</a>
</h2>
</center>
</body>
</html>
