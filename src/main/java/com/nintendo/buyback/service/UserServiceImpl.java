package com.nintendo.buyback.service;


import java.util.Arrays;
import java.util.HashSet;

import com.nintendo.buyback.model.*;
import com.nintendo.buyback.repository.CompanyRepository;
import com.nintendo.buyback.repository.RoleRepository;
import com.nintendo.buyback.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private CompanyRepository companyRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public void saveUser(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        if(user.getActive() == null || user.getActive().equals(""))
            user.setActive(Status.BLOCKED);
        if(user.getRoles() == null || user.getRoles().isEmpty()) {
            Role userRole = roleRepository.findByRole(Roles.USER.toString());
            user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        }
        userRepository.save(user);
    }

    @Override
    public void deleteUser(User user) {
        user.setActive(Status.INACTIVE);
        userRepository.save(user);
    }

    @Override
    public void blockUser(User user) {
        user.setActive(Status.BLOCKED);
        userRepository.save(user);
    }

    @Override
    public void activateUser(User user) {
        user.setActive(Status.ACTIVE);
        userRepository.save(user);
    }

}