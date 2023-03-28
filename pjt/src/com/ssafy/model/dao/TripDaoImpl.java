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
    public List<Trip> selectTripByOption(int sido, int type, String keyword) throws SQLException {
        StringBuffer sb = new StringBuffer();
        sb.append("select * from attraction_info where ");

        if (sido != 0) {
            sb.append(" sido_code =  ").append(sido).append(" ");
        }
        if (type != 0) {
            sb.append("and content_type_id =  ").append(type).append(" ");
        }
//		if (keyword != null || keyword.equals("")) {
//			sb.append("and title like %").append(keyword).append("%");
//		}

        System.out.println(sb.toString());
        try (Connection con = dbUtil.getConnection(); PreparedStatement pstmt = con.prepareStatement(sb.toString());) {

            ResultSet rs = pstmt.executeQuery();
            List<Trip> list = new ArrayList<>();

            while (rs.next()) {
                Trip trip = new Trip();
                trip.setTitle(rs.getString("title"));
                trip.setAddr1(rs.getString("addr1"));
                trip.setLatitude(rs.getDouble("latitude"));
                trip.setLongitude(rs.getDouble("longitude"));
                trip.setImage(rs.getString("first_image"));
                list.add(trip);
            }
            System.out.println(list.toString());
            return list;
        }
    }
}
