package com.nintendo.buyback.service;

import com.nintendo.buyback.model.User;

/**
 * Created by avieira on 03/03/2017.
 */
public interface UserService {
    public User findUserByEmail(String email);
    public void saveUser(User user);
}
