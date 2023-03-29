package com.ssafy.model.service;

import com.ssafy.dto.User;
import com.ssafy.model.dao.UserDao;
import com.ssafy.model.dao.UserDaoImpl;

import java.sql.SQLException;

public class UserServiceImpl implements UserService {
    private UserDao dao;
    private static UserServiceImpl instance = new UserServiceImpl();

    private UserServiceImpl() {
        dao = UserDaoImpl.getInstance();
    }

    public static UserServiceImpl getInstance() {
        return instance;
    }

    @Override
    public void regist(User user) throws SQLException {
        dao.insertUser(user);
    }

    @Override
    public User detail(String id) throws SQLException {
        return dao.selectUserById(id);
    }

    @Override
    public void delete(String id) throws SQLException {
        dao.deleteUserById(id);
    }

    @Override
    public void update(User user) throws SQLException {
        dao.updateUser(user);
    }

    @Override
    public boolean login(String id, String password) throws SQLException {
        User user = dao.selectUserById(id);
        if (user != null) {
            System.out.println("성공");
            return user.getPassword().equals(password);
        }
        System.out.println("실패");
        return false;
    }
}
