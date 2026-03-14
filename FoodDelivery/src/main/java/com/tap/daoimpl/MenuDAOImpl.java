package com.tap.daoimpl;

import java.sql.*;
import java.util.*;

import com.tap.dao.MenuDAO;
import com.tap.model.Menu;
import com.tap.util.DBConnection;

public class MenuDAOImpl implements MenuDAO {

    public List<Menu> getMenuByRestaurant(int restaurantId) {

        List<Menu> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "select * from menu where restaurantId=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, restaurantId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Menu m = new Menu();

                m.setId(rs.getInt("id"));
                m.setRestaurantId(rs.getInt("restaurantId"));
                m.setName(rs.getString("name"));
                m.setPrice(rs.getDouble("price"));
                m.setRating(rs.getFloat("rating"));
                m.setImage(rs.getString("image"));

                list.add(m);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}