package com.tap.servlet;

import java.io.IOException;

import com.tap.daoimpl.UserDAOImpl;
import com.tap.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

protected void doPost(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {

String email = request.getParameter("email");
String password = request.getParameter("password");

UserDAOImpl dao = new UserDAOImpl();

User user = dao.getUserByEmail(email, password);

if(user != null){

HttpSession session = request.getSession();
session.setAttribute("user", user);

response.sendRedirect("restaurants");

}
else{

response.sendRedirect("login.jsp");

}

}
}