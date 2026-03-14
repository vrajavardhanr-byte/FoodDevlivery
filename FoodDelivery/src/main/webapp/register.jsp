<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<style>
body{
font-family:Arial;
background:#f2f2f2;
}

.container{
width:350px;
margin:120px auto;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 0 10px gray;
text-align:center;
}

input{
width:90%;
padding:10px;
margin:10px 0;
border:1px solid #ccc;
border-radius:5px;
}

button{
width:95%;
padding:10px;
background:#28a745;
color:white;
border:none;
border-radius:5px;
font-size:16px;
}

button:hover{
background:#218838;
}

</style>
</head>

<body>

<div class="container">

<h2>Register</h2>

<form action="register" method="post">

Name<br>
<input type="text" name="name"><br><br>

Email<br>
<input type="email" name="email"><br><br>

Password<br>
<input type="password" name="password"><br><br>

Phone<br>
<input type="text" name="phone"><br><br>

<button type="submit">Register</button>

</form>
<a href="login.jsp">Already have account? Login</a>

</div>

</body>
</html>