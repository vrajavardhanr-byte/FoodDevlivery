<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Order Success</title>

<style>

body{
font-family:Arial;
background:#f2f2f2;
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

.box{
background:white;
padding:40px;
border-radius:10px;
text-align:center;
box-shadow:0px 0px 10px gray;
}

button{
background:#ff4d4d;
color:white;
border:none;
padding:10px 20px;
border-radius:5px;
}

</style>

</head>

<body>

<div class="box">

<h1>🎉 Order Placed Successfully</h1>

<%
String name = (String)request.getAttribute("name");
Integer orderId = (Integer)request.getAttribute("orderId");
%>

<h3>Thank you <%=name%></h3>

<p>Your Order ID: <b>#<%=orderId%></b></p>

<p>Your food will be delivered soon 🚴‍♂️</p>

<a href="restaurants">

<button>Order Again</button>

</a>

</div>

</body>
</html>