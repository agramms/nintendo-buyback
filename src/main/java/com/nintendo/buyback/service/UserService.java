package com.nintendo.buyback.service;

import com.nintendo.buyback.model.User;

public interface UserService {
    public User findUserByEmail(String email);
    public void saveUser(User user);
    public void deleteUser(User user);
    public void blockUser(User user);
    public void activateUser(User user);
}
