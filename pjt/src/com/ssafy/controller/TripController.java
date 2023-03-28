package com.ssafy.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssafy.model.service.TripService;
import com.ssafy.model.service.TripServiceImpl;

@WebServlet("/trip")
public class TripController extends HttpServlet {
    private TripService service;

    @Override
    public void init() throws ServletException {
        service = TripServiceImpl.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "list";

        switch (action) {
            case "list":
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "list";

        switch (action) {
            case "list":
                request.getRequestDispatcher("/plan.jsp").forward(request, response);
                break;
            case "detail":
                request.getRequestDispatcher("/detail.jsp").forward(request, response);
                break;
            case "search":
                request.getRequestDispatcher(search(request, response)).forward(request, response);
                break;
        }
    }

    private String search(HttpServletRequest request, HttpServletResponse response) {
        try {
            int sido = Integer.parseInt(request.getParameter("sido"));
            int type = Integer.parseInt(request.getParameter("type"));
            String keyword = request.getParameter("keyword") != null ? request.getParameter("keyword") : null;


            request.setAttribute("tripList", service.search(sido, type, keyword));
            System.out.println();
        } catch (NumberFormatException | SQLException e) {
            e.printStackTrace();
        }
        return "/plan.jsp";
    }
}
