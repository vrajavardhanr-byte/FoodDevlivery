package com.tap.daoimpl;



import java.sql.*;
import java.util.*;

import com.tap.dao.RestaurantDAO;
import com.tap.model.Restaurant;
import com.tap.util.DBConnection;

public class RestaurantDAOImpl implements RestaurantDAO {

    public List<Restaurant> getAllRestaurants() {

        List<Restaurant> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "select * from restaurant";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Restaurant r = new Restaurant();

                r.setId(rs.getInt("id"));
                r.setName(rs.getString("name"));
                r.setAddress(rs.getString("address"));
                r.setRating(rs.getFloat("rating"));
                r.setDescription(rs.getString("description"));
                r.setImage(rs.getString("image"));

                list.add(r);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}