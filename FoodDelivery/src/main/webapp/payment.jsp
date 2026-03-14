<!DOCTYPE html>
<html>
<head>
<title>Payment</title>

<style>

body{
font-family:Arial;
background:#f2f2f2;
text-align:center;
margin-top:100px;
}

.container{
background:white;
padding:30px;
width:400px;
margin:auto;
border-radius:10px;
box-shadow:0px 0px 10px gray;
}

img{
width:200px;
margin-top:10px;
}

button{
background:#ff4d4d;
color:white;
border:none;
padding:10px 20px;
margin-top:20px;
border-radius:5px;
}

</style>

</head>

<body>

<div class="container">

<h2>Payment</h2>

<p>Scan QR to Pay (UPI)</p>

<img src="image/download.png">

<form action="order" method="post">

<input type="hidden" name="name" value="<%=request.getParameter("name")%>">

<button>Confirm Payment</button>

</form>

</div>

</body>
</html>