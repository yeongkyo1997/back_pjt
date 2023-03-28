package com.ssafy.model.service;

import com.ssafy.dto.Trip;

import java.sql.SQLException;
import java.util.List;

public interface TripService {

	List<Trip> search(int sido_code, int type, String keyword) throws SQLException;
}
