<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>

body{
font-family: Arial;
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

h2{
margin-bottom:20px;
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
background:#ff4d4d;
color:white;
border:none;
border-radius:5px;
font-size:16px;
cursor:pointer;
}

button:hover{
background:#e63939;
}

a{
display:block;
margin-top:15px;
text-decoration:none;
color:#333;
}

</style>

</head>

<body>

<div class="container">

<h2>Login</h2>

<form action="login" method="post">

Email<br>
<input type="email" name="email" required><br><br>

Password<br>
<input type="password" name="password" required><br><br>

<button type="submit">Login</button>

</form>

<br>
<a href="register.jsp">Create Account</a>
</div>

</body>
</html>