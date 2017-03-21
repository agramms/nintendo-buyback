package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Bid;
import com.nintendo.buyback.model.Company;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.io.NotActiveException;
import java.util.List;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 13/03/2017 02:14
 * Project Name: nintendo-buyback
 */
public interface BidService {
    List<Bid> findBidsByAuction(Auction auction);

    @Transactional
    void makeBid(long auctionId, Company bidder, Bid bid)  throws Exception;

    @Transactional
    Bid simulateBid(long auctionId, Company bidder, Bid bid) throws Exception;

    void saveBid(Bid bid);
}
