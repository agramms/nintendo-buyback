package com.nintendo.buyback.service;

import com.nintendo.buyback.model.User;

import java.util.List;

public interface UserService {
    User findUserByEmail(String email);
    void saveUser(User user);
    void deleteUser(User user);
    void blockUser(User user);
    void activateUser(User user);
    List<User> findUserByName(String name);
}
