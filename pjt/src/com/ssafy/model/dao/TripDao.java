package com.ssafy.model.dao;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.dto.Trip;

public interface TripDao {
    List<Trip> selectTripBySido(int sido_code) throws SQLException;

    List<Trip> selectTripByGugun(int sido_code, int gugun_code) throws SQLException;

    List<Trip> selectTripByContent(int sido_code, int gugun_code, String content_type_id) throws SQLException;
}
