<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>

<title>Profile</title>

<style>

body{
font-family:Arial;
background:#f2f2f2;
}

.container{
width:40%;
margin:auto;
margin-top:50px;
background:white;
padding:30px;
border-radius:10px;
text-align:center;
}

</style>

</head>

<body>

<div class="container">

<h2>User Profile</h2>

<%

String user=(String)session.getAttribute("user");

%>

<p>Email: <%=user%></p>

<a href="restaurants">Back to Restaurants</a>

</div>

</body>
</html>