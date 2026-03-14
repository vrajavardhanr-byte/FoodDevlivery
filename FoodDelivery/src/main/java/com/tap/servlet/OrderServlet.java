package com.tap.servlet;

import java.io.IOException;
import java.util.Random;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/order")

public class OrderServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

String name = request.getParameter("name");

// Generate Order ID
Random r = new Random();
int orderId = 10000 + r.nextInt(90000);

HttpSession session = request.getSession();

// clear cart
session.removeAttribute("cart");

request.setAttribute("name", name);
request.setAttribute("orderId", orderId);

request.getRequestDispatcher("success.jsp").forward(request, response);

}
}