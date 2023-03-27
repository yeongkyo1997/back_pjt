package com.ssafy.model.service;

import com.ssafy.dto.Trip;

import java.sql.SQLException;
import java.util.List;

public interface TripService {
    List<Trip> selectTripBySido(int sido_code) throws SQLException;

    List<Trip> selectTripByGugun(int sido_code, int gugun_code) throws SQLException;

    List<Trip> selectTripByContent(int sido_code, int gugun_code, String content_type_id) throws SQLException;
}
