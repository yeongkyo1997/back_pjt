package com.ssafy.model.dao;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.dto.Trip;

public interface TripDao {
	List<Trip> selectTripByOption(int sido, int type, String keyword) throws SQLException;
}
