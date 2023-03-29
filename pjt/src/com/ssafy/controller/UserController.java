package com.ssafy.controller;

import com.ssafy.dto.User;
import com.ssafy.model.service.UserService;
import com.ssafy.model.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/user")
public class UserController extends HttpServlet {
    private UserService service;

    @Override
    public void init() throws ServletException {
        service = UserServiceImpl.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        switch (action) {
            case "regist":
                response.sendRedirect(request.getContextPath() + regist(request, response));
                break;
            case "login":
                response.sendRedirect(request.getContextPath() + login(request, response));
                break;
            case "update":
                response.sendRedirect(request.getContextPath() + update(request, response));
                break;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "detail":
                request.getRequestDispatcher(detail(request, response)).forward(request, response);
                break;
            case "delete":
                request.getRequestDispatcher(delete(request, response)).forward(request, response);
                break;
            case "loginForm":
                request.getRequestDispatcher("/login.jsp").forward(request, response);
                break;
            case "logout":
                HttpSession session = request.getSession();
                session.invalidate();
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                break;
        }
    }

    private String detail(HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    private String delete(HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    private String regist(HttpServletRequest request, HttpServletResponse response) {
        User user = new User();
        user.setId(request.getParameter("id"));
        user.setNickname(request.getParameter("nickname"));
        user.setPassword(request.getParameter("password"));
        user.setEmail(request.getParameter("email"));

        try {
            service.regist(user);
            return "/user?action=loginForm";
        } catch (SQLException e) {
            e.printStackTrace();
            return "/index.jsp";
        }
    }

    private String update(HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    private String login(HttpServletRequest request, HttpServletResponse response) {
    	System.out.println("login");
        try {
            if (service.login(request.getParameter("id"), request.getParameter("password"))) {
            	System.out.println("성공");
                HttpSession session = request.getSession();
                session.setAttribute("loginUser", request.getParameter("id"));
                return "/index.jsp";
            } else {
            	System.out.println("실패");
                return "/user?action=loginForm";
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return "/index.jsp";
        }
    }
}
