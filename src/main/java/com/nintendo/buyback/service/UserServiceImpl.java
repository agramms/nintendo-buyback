package com.nintendo.buyback.service;


import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import com.nintendo.buyback.model.*;
import com.nintendo.buyback.model.enumerators.Roles;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.repository.CompanyRepository;
import com.nintendo.buyback.repository.RoleRepository;
import com.nintendo.buyback.repository.UserRepository;
import com.nintendo.buyback.util.StringUtils;
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
    public List<User> findUserByName(String name) {
        if(!StringUtils.isNullOrEmpty(name))
            return userRepository.findByNameContaining(name);

        return userRepository.findAll();
    }

    @Override
    public void changeStatus(long userId, Status newStatus) {
        User user = userRepository.findOne(userId);
        user.setActive(newStatus);
        userRepository.save(user);
    }

}