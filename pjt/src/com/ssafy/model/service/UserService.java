package com.ssafy.model.service;

import com.ssafy.dto.User;

import java.sql.SQLException;

public interface UserService {
    void regist(User user) throws SQLException;

    User detail(String id) throws SQLException;

    void delete(String id) throws SQLException;

    void update(User user) throws SQLException;

    boolean login(String id, String password) throws SQLException;
}
