package com.tap.servlet;

import java.io.IOException;
import java.util.List;

import com.tap.daoimpl.RestaurantDAOImpl;
import com.tap.model.Restaurant;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/restaurants")
public class RestaurantServlet extends HttpServlet {

protected void doGet(HttpServletRequest req,
HttpServletResponse resp)
throws ServletException, IOException {

RestaurantDAOImpl dao = new RestaurantDAOImpl();

List<Restaurant> list = dao.getAllRestaurants();

req.setAttribute("restaurants", list);

RequestDispatcher rd = req.getRequestDispatcher("restaurants.jsp");

rd.forward(req, resp);

}
}