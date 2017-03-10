package com.nintendo.buyback.controller;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.service.AuctionService;
import com.nintendo.buyback.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class UserHomeController {

    @Autowired
    private UserService userService;

    @Autowired
    private AuctionService auctionService;

    @RequestMapping(value="/user/home", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView home(@RequestParam(value = "auctionName", required = false) String auctionName, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        modelAndView.addObject("isAdmin", auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN")));

        User user = userService.findUserByEmail(auth.getName());
        modelAndView.addObject("userName", user.getName() );
        modelAndView.addObject("userMail", "("+user.getEmail()+")" );
        modelAndView.addObject("userCompany", (user.getCompany() != null ? user.getCompany().getName() : ""));


        List<Auction> auctions;
        if(auctionName != null && !auctionName.isEmpty())
        {
            auctions = auctionService.findAuctionsByName(auctionName);
        }
        else
            auctions = auctionService.findActiveAuctions();
        modelAndView.addObject("qtdAuction", (auctions != null ? auctions.size() : 0));
        modelAndView.addObject("auctions", auctions);

        modelAndView.setViewName("user/home");
        return modelAndView;
    }

}
