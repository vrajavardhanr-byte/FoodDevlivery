package com.tap.dao;

import com.tap.model.User;

public interface UserDAO {

void addUser(User user);

User getUserByEmail(String email,String password);

}