package com.ssafy.controller;

import com.ssafy.dto.Trip;
import com.ssafy.model.service.TripService;
import com.ssafy.model.service.TripServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/trip")
public class TripController extends HttpServlet {
    private TripService service;

    @Override
    public void init() throws ServletException {
        service = TripServiceImpl.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "list";

        switch (action) {
            case "list":
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                break;
            case "search":
                request.getRequestDispatcher("/search.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "list";

        switch (action) {
            case "list":
                request.getRequestDispatcher(list(request, response)).forward(request, response);
                break;
            case "detail":
                request.getRequestDispatcher("/detail.jsp").forward(request, response);
                break;
        }
    }

    private String list(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setAttribute("trip", service.selectTripBySido(1));
        } catch (SQLException e) {
            e.printStackTrace();
            return "/error.jsp";
        }
        return "/index.jsp";
    }
}
