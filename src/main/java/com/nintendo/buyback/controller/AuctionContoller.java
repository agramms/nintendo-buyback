package com.nintendo.buyback.controller;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 09/03/2017 22:05
 * Project Name: nintendo-buyback
 */
@Controller
public class AuctionContoller {

    @Autowired
    AuctionService auctionService;

    @RequestMapping(value = "/admin/auction/registration", method = RequestMethod.GET)
    public ModelAndView auctionRegistration(){
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        Auction auction = new Auction();
        modelAndView.addObject("auction", auction);
        modelAndView.addObject("dateRange", "");

        modelAndView.setViewName("admin/auction/registration");
        return modelAndView;
    }

    @RequestMapping(value = "/admin/auction/registration", method = RequestMethod.POST)
    public ModelAndView createAuction(@Valid Auction auction, BindingResult bindingResult){
        ModelAndView modelAndView = new ModelAndView();
        Auction auctionExists = auctionService.findByStartDate(auction.getStart());
        if (auctionExists != null) {
            bindingResult
                    .rejectValue("start", "error.auction",
                            "Já existe um leilão cadastrado para essa data");
        }
        if (bindingResult.hasErrors()) {
            modelAndView.setViewName("auction/registration");
        } else {
            auctionService.saveAuction(auction);
            modelAndView.addObject("successMessage", "");
            modelAndView.addObject("auction", new Auction());
            modelAndView.setViewName("user/home");

        }


        modelAndView.setViewName("admin/auction/registration");
        return modelAndView;
    }
}
