package com.tap.daoimpl;

import java.sql.*;

import com.tap.dao.UserDAO;
import com.tap.model.User;
import com.tap.util.DBConnection;

public class UserDAOImpl implements UserDAO {

Connection con = DBConnection.getConnection();

public void addUser(User user){

try{

PreparedStatement ps = con.prepareStatement(
"insert into users(name,email,password,phone) values(?,?,?,?)");

ps.setString(1,user.getName());
ps.setString(2,user.getEmail());
ps.setString(3,user.getPassword());
ps.setString(4,user.getPhone());

ps.executeUpdate();

}catch(Exception e){
e.printStackTrace();
}

}

public User getUserByEmail(String email,String password){

User user=null;

try{

PreparedStatement ps = con.prepareStatement(
"select * from users where email=? and password=?");

ps.setString(1,email);
ps.setString(2,password);

ResultSet rs = ps.executeQuery();

if(rs.next()){

user = new User();

user.setId(rs.getInt("id"));
user.setName(rs.getString("name"));
user.setEmail(rs.getString("email"));
user.setPassword(rs.getString("password"));
user.setPhone(rs.getString("phone"));

}

}catch(Exception e){
e.printStackTrace();
}

return user;
}
}