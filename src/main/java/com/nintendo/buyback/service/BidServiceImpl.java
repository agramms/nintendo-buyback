package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.AuctionItem;
import com.nintendo.buyback.model.Bid;
import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.repository.BidRepository;
import com.nintendo.buyback.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.*;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 13/03/2017 02:14
 * Project Name: nintendo-buyback
 */
@Service("bidService")
public class BidServiceImpl implements BidService {
    @Autowired
    BidRepository bidRepository;

    @Autowired
    CompanyRepository companyRepository;

    @Override
    public List<Bid> findBidsByAuction(Auction auction) {
        return bidRepository.findByAuction(auction);
    }

    private void persists(Bid bid)
    {
        Company company = bid.getCompany();
        company.getBids().add(bid);
        companyRepository.save(company);
    }
}
