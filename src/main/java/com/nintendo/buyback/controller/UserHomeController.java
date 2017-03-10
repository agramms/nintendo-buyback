package com.nintendo.buyback.controller;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Role;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Roles;
import com.nintendo.buyback.service.AuctionService;
import com.nintendo.buyback.service.CompanyService;
import com.nintendo.buyback.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value="/user/home")
public class UserHomeController {

    @Autowired
    private UserService userService;

    @Autowired
    private AuctionService auctionService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        modelAndView.addObject("authentication", auth);


        User user = userService.findUserByEmail(auth.getName());
        modelAndView.addObject("userName", user.getName() );
        modelAndView.addObject("userMail", "("+user.getEmail()+")" );
        modelAndView.addObject("userCompany", (user.getCompany() != null ? user.getCompany().getName() : ""));
        List<Auction> auctions = auctionService.findActiveAuctions();
        modelAndView.addObject("qtdAuction", (auctions != null ? auctions.size() : 0) + " em andamento");
        modelAndView.addObject("auctions", auctions);

        modelAndView.setViewName("user/home");
        return modelAndView;
    }
}
