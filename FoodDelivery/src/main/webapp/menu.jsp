<%@ page import="java.util.*, com.tap.model.Menu" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>

<link rel="stylesheet" href="css/style.css">

<style>

body{
font-family: Arial;
background:#f2f2f2;
margin:0;
}

.navbar{
display:flex;
justify-content:space-between;
align-items:center;
background:#ff4d4d;
padding:15px;
color:white;
}

.logo{
font-size:22px;
font-weight:bold;
}

.nav-links a{
color:white;
text-decoration:none;
margin-left:20px;
font-weight:bold;
}

.title{
text-align:center;
margin-top:20px;
}

.container{
display:flex;
flex-wrap:wrap;
justify-content:center;
gap:25px;
margin-top:30px;
}

.card{
background:white;
width:250px;
border-radius:10px;
box-shadow:0 4px 8px rgba(0,0,0,0.2);
text-align:center;
padding:15px;
}

.card img{
width:100%;
height:150px;
border-radius:10px;
}

button{
background:#ff4d4d;
color:white;
border:none;
padding:10px 15px;
border-radius:6px;
cursor:pointer;
margin-top:10px;
}

button:hover{
background:#e60000;
}

</style>

</head>

<body>

<div class="navbar">

<div class="logo">FoodDelivery</div>

<div class="nav-links">

<a href="restaurants">Restaurants</a>

<a href="cart.jsp">Cart</a>

<a href="profile.jsp">Profile</a>

<a href="logout">Logout</a>

</div>

</div>

<h1 class="title">Menu Items</h1>


<div class="container">
<%
List<Menu> list = (List<Menu>)request.getAttribute("menus");

for(Menu m : list){
%>

<div class="card">

<img src="image/<%=m.getImage()%>" width="200">

<h3><%=m.getName()%></h3>

<p>Price : &#8377;<%=m.getPrice()%></p>

<form action="cart" method="post">

<input type="hidden" name="action" value="add">
<input type="hidden" name="id" value="<%=m.getId()%>">
<input type="hidden" name="name" value="<%=m.getName()%>">
<input type="hidden" name="price" value="<%=m.getPrice()%>">

<button>Add To Cart</button>

</form>

</div>


<%
}
%>
</div>
</body>
</html>