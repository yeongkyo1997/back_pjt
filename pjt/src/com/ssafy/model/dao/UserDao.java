package com.ssafy.model.dao;

import com.ssafy.dto.User;

import java.sql.SQLException;

public interface UserDao {
    void insertUser(User user) throws SQLException;

    User selectUserById(String id) throws SQLException;

    void deleteUserById(String id) throws SQLException;

    void updateUser(User user) throws SQLException;
}
