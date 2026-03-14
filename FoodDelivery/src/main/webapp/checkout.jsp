<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Checkout</title>

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
}

input,select{
width:100%;
padding:10px;
margin-top:10px;
margin-bottom:15px;
}

button{
background:#ff4d4d;
color:white;
border:none;
padding:10px;
width:100%;
border-radius:5px;
}

</style>

</head>

<body>

<!DOCTYPE html>
<html>
<head>
<title>Checkout</title>
</head>

<body>

<h2>Checkout</h2>

<form action="payment.jsp" method="post">

Name<br>
<input type="text" name="name"><br><br>

Address<br>
<input type="text" name="address"><br><br>

Phone<br>
<input type="text" name="phone"><br><br>

Payment Method<br>

<select name="payment">
<option>Cash On Delivery</option>
<option>UPI</option>
<option>Card</option>
</select>

<br><br>

<button type="submit">Proceed to Payment</button>

</form>

</body>
</html>

</body>
</html>