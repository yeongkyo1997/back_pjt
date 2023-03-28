package com.ssafy.model.service;

import com.ssafy.dto.Trip;
import com.ssafy.model.dao.TripDaoImpl;

import java.sql.SQLException;
import java.util.List;

public class TripServiceImpl implements TripService {
	private TripDaoImpl tripDao;

	private static TripServiceImpl instance = new TripServiceImpl();

	private TripServiceImpl() {
		tripDao = TripDaoImpl.getInstance();
	}

	public static TripServiceImpl getInstance() {
		return instance;
	}

	@Override
	public List<Trip> search(int sido_code, int type, String keyword) throws SQLException {
		return tripDao.selectTripByOption(sido_code, type, keyword);
	} 
}
