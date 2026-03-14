package com.tap.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.tap.model.CartItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

HttpSession session = request.getSession();

List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

if(cart == null){
cart = new ArrayList<>();
}

String action = request.getParameter("action");
int id = Integer.parseInt(request.getParameter("id"));

/* ADD ITEM */

if("add".equals(action)){

String name = request.getParameter("name");
double price = Double.parseDouble(request.getParameter("price"));

boolean found = false;

for(CartItem item : cart){

if(item.getId() == id){

item.setQuantity(item.getQuantity()+1);
found = true;
break;

}

}

if(!found){

CartItem newItem = new CartItem(id,name,price,1);
cart.add(newItem);

}

}

/* INCREASE QUANTITY */

else if("increase".equals(action)){

for(CartItem item : cart){

if(item.getId() == id){

item.setQuantity(item.getQuantity()+1);

}

}

}

/* DECREASE QUANTITY */

else if("decrease".equals(action)){

for(CartItem item : cart){

if(item.getId() == id && item.getQuantity() > 1){

item.setQuantity(item.getQuantity()-1);

}

}

}

/* REMOVE ITEM */

else if("remove".equals(action)){

cart.removeIf(item -> item.getId() == id);

}

/* SAVE CART */

session.setAttribute("cart", cart);

response.sendRedirect("cart.jsp");

}
}