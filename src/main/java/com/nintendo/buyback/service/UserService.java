package com.nintendo.buyback.service;

import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Status;

import java.util.List;

public interface UserService {
    User findUserByEmail(String email);
    void saveUser(User user);
    List<User> findUserByName(String name);
    void changeStatus(long userId, Status newStatus);
}
