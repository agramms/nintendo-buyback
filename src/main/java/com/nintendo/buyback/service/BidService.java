package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Bid;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 13/03/2017 02:14
 * Project Name: nintendo-buyback
 */
public interface BidService {
    List<Bid> findBidsByAuction(Auction auction);
}
