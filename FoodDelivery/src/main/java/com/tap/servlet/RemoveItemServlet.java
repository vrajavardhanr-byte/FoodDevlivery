package com.tap.servlet;

import java.io.IOException;
import java.util.List;

import com.tap.model.CartItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/remove")

public class RemoveItemServlet extends HttpServlet {

protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

int id = Integer.parseInt(request.getParameter("id"));

HttpSession session = request.getSession();

List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

if(cart != null){

cart.removeIf(item -> item.getId() == id);

}

session.setAttribute("cart", cart);

response.sendRedirect("cart.jsp");

}
}