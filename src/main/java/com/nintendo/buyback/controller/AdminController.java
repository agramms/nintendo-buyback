package com.nintendo.buyback.controller;

import com.nintendo.buyback.model.User;
import com.nintendo.buyback.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by avieira on 07/03/2017.
 */
@Controller
@RequestMapping(value="/user/home")
public class AdminController {

    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.findUserByEmail(auth.getName());
        modelAndView.addObject("userName", user.getName() );
        modelAndView.addObject("userMail", "("+user.getEmail()+")" );
        modelAndView.addObject("userCompany", (user.getCompany() != null ? user.getCompany().getName() : ""));
        modelAndView.setViewName("user/home");
        return modelAndView;
    }
}
