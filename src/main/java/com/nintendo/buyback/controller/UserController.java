package com.nintendo.buyback.controller;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Bid;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.service.AuctionService;
import com.nintendo.buyback.service.BidService;
import com.nintendo.buyback.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
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
     * String para Mapping especifico do leilão
     */
    public static final String USER_AUCTION_MAPPING = ROOT_MAPPING+"/auction";

    public static final String USER_BID_MAPPING = ROOT_MAPPING+"/bid";

    @Autowired
    private UserService userService;

    @Autowired
    private AuctionService auctionService;

    @Autowired
    private BidService bidService;

    @RequestMapping(value="home", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView home(@RequestParam(value = "auctionName", required = false) String auctionName, @ModelAttribute(LoadGlobalData.USER_DATA) User user, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();

        List<Auction> auctions = auctionService.findAuctionsByName(auctionName);
        modelAndView.addObject("qtdAuction", (auctions != null ? auctions.size() : 0));
        modelAndView.addObject("auctions", auctions);

        modelAndView.setViewName(HOME_MAPPING);
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
        modelAndView.addObject("showBid", false);

        modelAndView.setViewName(USER_AUCTION_MAPPING);
        return modelAndView;
    }


    @RequestMapping(value="bid/{auctionId}", method = {RequestMethod.GET})
    public ModelAndView getBid(@PathVariable long auctionId
            , @ModelAttribute(LoadGlobalData.USER_DATA) User user
            , HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();
        Auction auction = auctionService.findOneAuction(auctionId);

        modelAndView.addObject("auctionHeader", auction.toString());
        Bid bid = new Bid();
        bid.setAuction(auction);
        bid.setCompany(user.getCompany());
        bid.setActive(Status.ACTIVE);
        modelAndView.addObject("bid", bid);

        modelAndView.setViewName(USER_BID_MAPPING);
        return modelAndView;
    }


    @RequestMapping(value="bid/{auctionId}", method = {RequestMethod.POST}, params = "action=confirm")
    public ModelAndView registerBid(@PathVariable long auctionId
            ,@ModelAttribute(LoadGlobalData.USER_DATA) User user
            , @Valid Bid bid, BindingResult bindingResult
            , HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();
        try {
            bidService.makeBid(auctionId, user.getCompany(), bid);
            modelAndView.addObject("successMessage", "Seu lance foi registrado, assim que o leilão for encerrado você receberá uma notificação sobre os vencedores");

            modelAndView.addObject("returnAdd", true);

            modelAndView.setViewName(USER_AUCTION_MAPPING);
        }
        catch (Exception ex)
        {
            bindingResult.rejectValue("value", "value.error"
                    , ex.getMessage());
            modelAndView.addObject("errorMessage", ex.getMessage());
            modelAndView.addObject("returnError", true);
            modelAndView.setViewName(USER_BID_MAPPING);

        }
        finally {
            Auction auction = auctionService.findOneAuction(auctionId);
            modelAndView.addObject("auctionHeader", auction.toString());
            modelAndView.addObject("auction", auction);
            modelAndView.addObject("bid", bid);
        }

        return modelAndView;
    }

    @RequestMapping(value="bid/{auctionId}", method = {RequestMethod.POST}, params = "action=verify")
    public ModelAndView verifyBid(@PathVariable long auctionId
            ,@ModelAttribute(LoadGlobalData.USER_DATA) User user
            , @Valid Bid bid, BindingResult bindingResult
            , HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();
        try {
            bid = bidService.simulateBid(auctionId, user.getCompany(), bid);
        }
        catch (Exception ex)
        {
            bindingResult.rejectValue("bid", "bid.error"
                            , ex.getMessage());
        }

        modelAndView.addObject("auctionHeader", bid.getAuction().toString());
        modelAndView.addObject("bid", bid);

        modelAndView.setViewName(USER_BID_MAPPING);
        return modelAndView;
    }

}
