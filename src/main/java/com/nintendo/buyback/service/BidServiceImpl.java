package com.nintendo.buyback.service;

import com.nintendo.buyback.model.AuctionItem;
import com.nintendo.buyback.model.Bid;
import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.repository.BidRepository;
import com.nintendo.buyback.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

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
    @Transactional
    public Bid simulateBid(Bid bid) {
        int totalItems = (int) Math.round(bid.getCompany().getBudget() / bid.getValue());
        final HashMap<Long, AuctionItem> bidAuctionItems = new HashMap<>();

        while(totalItems > 0) {
            for (AuctionItem auctionItem : bid.getAuction().getAuctionItens()) {
                AuctionItem bidItem = bidAuctionItems.get(auctionItem.getId());
                if(bidItem == null)
                {
                    bidItem = new AuctionItem();
                    bidItem.setBid(bid);
                }
                auctionItem.setQuantityStored(auctionItem.getQuantityStored() - 1);
                bidItem.setQuantityStored(bidItem.getQuantityStored()+1);


                if(bidItem.getProduct() == null)
                    bidItem.setProduct(auctionItem.getProduct());
                if(bidItem.getAuction() == null)
                    bidItem.setAuction(bid.getAuction());


                bidAuctionItems.put(auctionItem.getId(),bidItem);
                if (--totalItems <= 0) break;
            }
        }
        bid.setAuctionItens(new HashSet<>(bidAuctionItems.values()));

        return bid;
    }

    private void persists(Bid bid)
    {
        Company company = bid.getCompany();
        company.getBids().add(bid);
        companyRepository.save(company);


    }
}
