<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
String user = (String)session.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>
</head>

<body>

<h1>Welcome to FoodDelivery</h1>

<% if(user == null){ %>

<a href="login.jsp">Login</a>
<a href="register.jsp">Register</a>

<% } else { %>

<h3>Welcome <%=user%></h3>

<a href="restaurants">Explore Restaurants</a>
<a href="logout">Logout</a>

<% } %>

</body>
</html>