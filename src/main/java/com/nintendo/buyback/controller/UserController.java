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
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    /**
     * String para Mapping padrão / base
     */
    public static final String ROOT_MAPPING = "user";

    /**
     * String para Mapping home
     */
    public static final String HOME_MAPPING = ROOT_MAPPING+"/home";

    /**
     * String para Mapping list
     */
    public static final String USER_LIST_MAPPING = ROOT_MAPPING+"/list";

    /**
     * String para Mapping especifico do leilão
     */
    public static final String USER_AUCTION_MAPPING = ROOT_MAPPING+"/auction";



    @Autowired
    private UserService userService;

    @Autowired
    private AuctionService auctionService;

    @RequestMapping(value="home", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView home(@RequestParam(value = "auctionName", required = false) String auctionName, @ModelAttribute(LoadGlobalData.USER_DATA) User user, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();

        List<Auction> auctions = auctionService.findAuctionsByName(auctionName);
        modelAndView.addObject("qtdAuction", (auctions != null ? auctions.size() : 0));
        modelAndView.addObject("auctions", auctions);

        modelAndView.setViewName(HOME_MAPPING);
        return modelAndView;
    }

    @RequestMapping(value="list", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView listUser(@RequestParam(value = "userFilter", required = false) String filter, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        List<User> users = userService.findUserByName(filter);

        modelAndView.addObject("qtdUsers", (users != null ? users.size() : 0));
        modelAndView.addObject("users", users);

        modelAndView.setViewName(USER_LIST_MAPPING);
        return modelAndView;
    }

    @RequestMapping(value="home/engage", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView engageCompany(@RequestParam(value = "auctionId") long auctionId, @ModelAttribute(LoadGlobalData.USER_DATA) User user, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();
        auctionService.engage(user.getCompany(), auctionId);
        List<Auction> auctions = auctionService.findActiveAuctions();
        modelAndView.addObject("qtdAuction", (auctions != null ? auctions.size() : 0));
        modelAndView.addObject("auctions", auctions);


        modelAndView.setViewName(HOME_MAPPING);
        return modelAndView;
    }

    @RequestMapping(value="auction", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView getAuction(@RequestParam(value = "auctionId") long auctionId, @ModelAttribute(LoadGlobalData.USER_DATA) User user, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();
        Auction auction = auctionService.findOneAuction(auctionId);

        modelAndView.addObject("auctionHeader", auction.toString());
        modelAndView.addObject("auction", auction);


        modelAndView.setViewName(USER_AUCTION_MAPPING);
        return modelAndView;
    }

}
