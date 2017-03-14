package com.nintendo.buyback.controller;

import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Roles;
import com.nintendo.buyback.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 11/03/2017 13:39
 * Project Name: nintendo-buyback
 */
@ControllerAdvice(assignableTypes = {AuctionController.class, CompanyController.class, UserController.class, AdminUserController.class})
public class LoadGlobalData {

    /**
     * String com Model Attribute para o usuário logado
     */
    public static final String USER_DATA = "userData";

    /**
     * String com Model Attribute para verificar se o usuário é admin
     */
    public static final String IS_ADMIN = "isAdmin";


    @Autowired
    private UserService userService;

    @ModelAttribute(USER_DATA)
    public User getUserData()
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.findUserByEmail(auth.getName());

        return user;
    }

    @ModelAttribute(IS_ADMIN)
    public boolean isAdmin()
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth.getAuthorities().contains(new SimpleGrantedAuthority(Roles.ADMIN.toString()));
    }

}
