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
	public List<Trip> selectTripBySido(int sido_code) throws SQLException {
		return tripDao.selectTripBySido(sido_code);
	}

	@Override
	public List<Trip> selectTripByGugun(int sido_code, int gugun_code) throws SQLException {
		return tripDao.selectTripByGugun(sido_code, gugun_code);
	}

	@Override
	public List<Trip> selectTripByContent(int sido_code, int gugun_code, String content_type_id) throws SQLException {
		return tripDao.selectTripByContent(sido_code, gugun_code, content_type_id);
	}
}
