<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, com.tap.model.Restaurant" %>

<%@ page import="com.tap.model.User" %>

<%
User user = (User)session.getAttribute("user");

if(user == null){
response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>

<title>Restaurants</title>

<style>

body{
font-family:Arial;
background:#f2f2f2;
}

.container{
display:flex;
flex-wrap:wrap;
gap:20px;
justify-content:center;
}

.card{
background:white;
width:250px;
padding:15px;
border-radius:10px;
box-shadow:0px 0px 8px gray;
text-align:center;
}

.card img{
width:100%;
height:150px;
border-radius:8px;
}

button{
background:#ff4d4d;
color:white;
border:none;
padding:10px;
border-radius:5px;
}

</style>

</head>

<body>

<h1 style="text-align:center">Restaurants</h1>

<div class="container">

<%
List<Restaurant> list =
(List<Restaurant>)request.getAttribute("restaurants");

if(list!=null){

for(Restaurant r:list){
%>

<div class="card">

<img src="image/<%=r.getImage()%>">

<h3><%=r.getName()%></h3>

<p><%=r.getAddress()%></p>

<p>⭐ <%=r.getRating()%></p>

<a href="menu?rid=<%=r.getId()%>">
<button>View Menu</button>
</a>

</div>

<%
}
}
%>

</div>

</body>
</html>