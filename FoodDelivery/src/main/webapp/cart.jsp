<%@ page import="java.util.*, com.tap.model.CartItem" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Cart</title>

<style>


body{
    font-family: Arial;
    background:#f2f2f2;
}

.cart-container{
    width:650px;
    margin:50px auto;
    background:white;
    padding:25px;
    border-radius:10px;
    box-shadow:0 4px 12px rgba(0,0,0,0.1);
}

h1{
    text-align:center;
    margin-bottom:20px;
}

.cart-item{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:15px 0;
    border-bottom:1px solid #eee;
}

.item-name{
    font-weight:bold;
    width:150px;
}

.item-price{
    width:80px;
}

.qty-box{
    display:flex;
    align-items:center;
    gap:10px;
}

.qty-btn{
    background:#ff4d4d;
    color:white;
    border:none;
    width:30px;
    height:30px;
    border-radius:5px;
    cursor:pointer;
}

.qty-btn:hover{
    background:#e63939;
}

.remove-btn{
    background:#777;
    color:white;
    border:none;
    padding:6px 10px;
    border-radius:5px;
    cursor:pointer;
}

.total{
    text-align:right;
    font-size:18px;
    font-weight:bold;
    margin-top:20px;
}

.checkout-btn{
    width:100%;
    margin-top:20px;
    padding:12px;
    background:#ff4d4d;
    color:white;
    border:none;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
}

</style>
</head>

<body>

<div class="cart-container">

<h1>Your Cart</h1>

<%
List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

double total = 0;

if(cart != null && !cart.isEmpty()){

for(CartItem c : cart){

total += c.getTotal();
%>

<div class="cart-item">

<div class="item-name"><%=c.getName()%></div>

<div class="item-price">&#8377;<%=c.getPrice()%></div>

<div class="qty-box">

<form action="cart" method="post">
<input type="hidden" name="action" value="decrease">
<input type="hidden" name="id" value="<%=c.getId()%>">
<button type="submit" class="qty-btn">-</button>
</form>

<div><%=c.getQuantity()%></div>

<form action="cart" method="post">
<input type="hidden" name="action" value="increase">
<input type="hidden" name="id" value="<%=c.getId()%>">
<button type="submit" class="qty-btn">+</button>
</form>

</div>

<div>&#8377;<%=c.getTotal()%></div>

<form action="cart" method="post">
<input type="hidden" name="action" value="remove">
<input type="hidden" name="id" value="<%=c.getId()%>">
<button class="remove-btn">Remove</button>
</form>

</div>

<%
}
}else{
%>

<p style="text-align:center;">Your cart is empty</p>

<%
}
%>

<div class="total">
Total: &#8377;<%=total%>
</div>

<a href="checkout.jsp">
<button class="checkout-btn">Proceed to Checkout</button>
</a>

</div>

</body>
</html>