package com.tap.servlet;

import java.io.IOException;

import com.tap.daoimpl.UserDAOImpl;
import com.tap.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/register")

public class RegisterServlet extends HttpServlet {

protected void doPost(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {

String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String phone = request.getParameter("phone");

User user = new User(name,email,password,phone);

UserDAOImpl dao = new UserDAOImpl();

dao.addUser(user);

response.sendRedirect("login.jsp");

}
}