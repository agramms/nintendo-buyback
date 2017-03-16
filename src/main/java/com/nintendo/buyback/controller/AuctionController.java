package com.nintendo.buyback.controller;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 09/03/2017 22:05
 * Project Name: nintendo-buyback
 */
@Controller
@RequestMapping("admin/auction")
public class AuctionController {

    /**
     * String para Request Mapping de criação
     */
    public static final String AUCTION_REGISTRATION_MAPPING = "registration";
    /**
     * String para Request Mapping de lista
     */
    public static final String AUCTION_LIST_MAPPING = "list";
    /**
     * String com caminho basico para a view
     */
    public static final String AUCTION_VIEW_NAME = "admin/auction";
    /**
     * Nome da view completa para chamada de ação de registro
     */
    public static final String AUCTION_REGISTRATION_VIEW_NAME = AUCTION_VIEW_NAME + "/" + AUCTION_REGISTRATION_MAPPING;
    /**
     * Nome da View completa para chamada da ação de lista
     */
    public static final String AUCTION_LIST_VIEW_NAME = AUCTION_VIEW_NAME + "/" + AUCTION_LIST_MAPPING;

    public static final String AUCTION_BLOCK_MAPPING = "block";
    public static final String AUCTION_UNBLOCK_MAPPING = "unblock" ;
    public static final String AUCTION_CLOSE_MAPPING = "close" ;
    @Autowired
    AuctionService auctionService;

    @RequestMapping(value = AUCTION_REGISTRATION_MAPPING, method = RequestMethod.GET)
    public ModelAndView auctionRegistration(){
        ModelAndView modelAndView = new ModelAndView();

        Auction auction = new Auction();
        auction.setQtdMaxProducts(100);
        auction.setActive(Status.ACTIVE);
        modelAndView.addObject("auction", auction);

        modelAndView.setViewName(AUCTION_REGISTRATION_VIEW_NAME);
        return modelAndView;
    }

    @RequestMapping(value = AUCTION_REGISTRATION_MAPPING, method = RequestMethod.POST)
    public ModelAndView createAuction(@Valid Auction auction, BindingResult bindingResult){
        ModelAndView modelAndView = new ModelAndView();

        Auction auctionExists = auctionService.findByStartDate(auction.getStart());
        if (auctionExists != null) {
            bindingResult
                    .rejectValue("start", "error.auction",
                            "Já existe um leilão cadastrado para essa data");
        }
        if (bindingResult.hasErrors()) {
            modelAndView.setViewName(AUCTION_REGISTRATION_VIEW_NAME);
        } else {
            auctionService.createAuction(auction);
            modelAndView.addObject("successMessage", "Leilão cadastrado com sucesso");
            modelAndView.addObject("returnAdd", true);
            List<Auction> auctions = auctionService.findAuctionsByNameAdmin("");
            modelAndView.addObject("qtdAuction", (auctions != null ? auctions.size() : 0));
            modelAndView.addObject("auctions", auctions);


            modelAndView.setViewName(AUCTION_LIST_VIEW_NAME);

        }
        return modelAndView;
    }

    @RequestMapping(value=AUCTION_LIST_MAPPING, method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView home(@RequestParam(value = "auctionName", required = false) String auctionName, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();

        List<Auction> auctions = auctionService.findAuctionsByNameAdmin(auctionName);
        modelAndView.addObject("qtdAuction", (auctions != null ? auctions.size() : 0));
        modelAndView.addObject("auctions", auctions);

        modelAndView.setViewName(AUCTION_LIST_VIEW_NAME);
        return modelAndView;
    }


    @RequestMapping(value=AUCTION_BLOCK_MAPPING, method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView blockAuction(@RequestParam(value = "blockAuctionId") long auctionId, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();

        auctionService.auctionBlock(auctionId);

        List<Auction> auctions = auctionService.findAuctionsByNameAdmin("");
        modelAndView.addObject("qtdAuction", (auctions != null ? auctions.size() : 0));
        modelAndView.addObject("auctions", auctions);

        modelAndView.setViewName(AUCTION_LIST_VIEW_NAME);
        return modelAndView;
    }


    @RequestMapping(value=AUCTION_UNBLOCK_MAPPING, method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView unBlockAuction(@RequestParam(value = "unblockAuctionId") long auctionId, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();

        auctionService.auctionActivate(auctionId);

        List<Auction> auctions = auctionService.findAuctionsByNameAdmin("");
        modelAndView.addObject("qtdAuction", (auctions != null ? auctions.size() : 0));
        modelAndView.addObject("auctions", auctions);

        modelAndView.setViewName(AUCTION_LIST_VIEW_NAME);
        return modelAndView;
    }

    @RequestMapping(value=AUCTION_CLOSE_MAPPING, method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView closeAuction(@RequestParam(value = "closeAuctionId") long auctionId, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();

        auctionService.auctionFinish(auctionId);

        List<Auction> auctions = auctionService.findAuctionsByNameAdmin("");
        modelAndView.addObject("qtdAuction", (auctions != null ? auctions.size() : 0));
        modelAndView.addObject("auctions", auctions);

        modelAndView.setViewName(AUCTION_LIST_VIEW_NAME);
        return modelAndView;
    }
}
