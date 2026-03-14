package com.tap.servlet;

import java.io.IOException;
import java.util.List;

import com.tap.daoimpl.MenuDAOImpl;
import com.tap.model.Menu;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/menu")
public class MenuServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        int rid = Integer.parseInt(req.getParameter("rid"));

        MenuDAOImpl dao = new MenuDAOImpl();

        List<Menu> list = dao.getMenuByRestaurant(rid);

        req.setAttribute("menus", list);

        RequestDispatcher rd = req.getRequestDispatcher("menu.jsp");

        rd.forward(req, resp);
    }
}