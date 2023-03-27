package com.ssafy.model.dao;

import com.ssafy.dto.Trip;
import com.ssafy.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TripDaoImpl implements TripDao {
    private DBUtil dbUtil;
    private static TripDaoImpl instance = new TripDaoImpl();

    private TripDaoImpl() {
        dbUtil = DBUtil.getInstance();
    }

    public static TripDaoImpl getInstance() {
        return instance;
    }

    @Override
    public List<Trip> selectTripBySido(int sido_code) throws SQLException {
        try (Connection con = dbUtil.getConnection(); PreparedStatement pstmt = con.prepareStatement("SELECT * FROM trip WHERE sido_code = ?")) {
            ResultSet rs = pstmt.executeQuery();
            List<Trip> list = new ArrayList<>();
            pstmt.setInt(1, sido_code);

            while (rs.next()) {
                Trip trip = new Trip();
                trip.setTitle(rs.getString("title"));
                trip.setAddr1(rs.getString("addr1"));
                trip.setLatitude(rs.getDouble("latitude"));
                trip.setLongitude(rs.getDouble("longitude"));
                list.add(trip);
            }
            return list;
        }
    }

    @Override
    public List<Trip> selectTripByGugun(int sido_code, int gugun_code) throws SQLException {
        try (Connection con = dbUtil.getConnection(); PreparedStatement pstmt = con.prepareStatement("select title, addr1,  latitude, longitude " + "where sido_code = ? and gugun_code = ?")) {
            int idx = 0;
            pstmt.setInt(++idx, sido_code);
            pstmt.setInt(++idx, gugun_code);

            ResultSet rs = pstmt.executeQuery();
            List<Trip> list = new ArrayList<>();

            while (rs.next()) {
                Trip trip = new Trip();
                trip.setTitle(rs.getString("title"));
                trip.setAddr1(rs.getString("addr1"));
                trip.setLatitude(rs.getDouble("latitude"));
                trip.setLongitude(rs.getDouble("longitude"));
                list.add(trip);
            }
            return list;
        }
    }

    @Override
    public List<Trip> selectTripByContent(int sido_code, int gugun_code, String content_type_id) throws SQLException {
        try (Connection con = dbUtil.getConnection(); PreparedStatement pstmt = con.prepareStatement("select title, addr1,  latitude, longitude " + "where sido_code = ? and gugun_code = ? and content_type_id = ?")) {
            int idx = 0;
            pstmt.setInt(++idx, sido_code);
            pstmt.setInt(++idx, gugun_code);
            pstmt.setString(++idx, content_type_id);

            ResultSet rs = pstmt.executeQuery();
            List<Trip> list = new ArrayList<>();

            while (rs.next()) {
                Trip trip = new Trip();
                trip.setTitle(rs.getString("title"));
                trip.setAddr1(rs.getString("addr1"));
                trip.setLatitude(rs.getDouble("latitude"));
                trip.setLongitude(rs.getDouble("longitude"));
                list.add(trip);
            }
            return list;
        }
    }
}
