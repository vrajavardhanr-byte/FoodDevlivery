package com.tap.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/logout")

public class LogoutServlet extends HttpServlet {

protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    HttpSession session = request.getSession(false);

    if(session != null){
        session.invalidate();   // destroy session
    }

    response.sendRedirect("home.html"); // redirect to home page
}
}