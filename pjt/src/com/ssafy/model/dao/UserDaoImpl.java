package com.ssafy.model.dao;

import com.ssafy.dto.User;
import com.ssafy.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    private DBUtil db;
    private static UserDaoImpl instance = new UserDaoImpl();

    private UserDaoImpl() {
        db = DBUtil.getInstance();
    }


    public static UserDaoImpl getInstance() {
        return instance;
    }

    @Override
    public void insertUser(User user) throws SQLException {
        try (Connection con = db.getConnection(); PreparedStatement pstmt = con.prepareStatement("insert into user(id, password, email, nickname) values  (?, ?, ?, ?) ");) {
            int idx = 0;
            pstmt.setString(++idx, user.getId());
            pstmt.setString(++idx, user.getPassword());
            pstmt.setString(++idx, user.getEmail());
            pstmt.setString(++idx, user.getNickname());

            pstmt.executeUpdate();
        }
    }

    @Override
    public User selectUserById(String id) throws SQLException {
        try (Connection con = db.getConnection(); PreparedStatement pstmt = con.prepareStatement("select id, password, email, nickname from user " + "where id=? " + " order by nickname");) {
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setId(rs.getString("id"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setNickname(rs.getString("nickname"));
                return user;
            }
        }
        return null;
    }

    @Override
    public void deleteUserById(String id) throws SQLException {
        try (Connection con = db.getConnection(); PreparedStatement pstmt = con.prepareStatement("delete from user where id=?");) {
            pstmt.setString(1, id);
            pstmt.executeUpdate();
        }
    }

    @Override
    public void updateUser(User user) throws SQLException {
        try (Connection con = db.getConnection(); PreparedStatement pstmt = con.prepareStatement("");) {
            selectUserById(user.getId());
        }
    }
}
