package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.repository.AuctionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service("auctionService")
public class AuctionServiceImpl implements AuctionService {

    @Autowired
    private AuctionRepository auctionRepository;

    @Override
    public List<Auction> findAllAuctions() {
        return auctionRepository.findAll();
    }
    @Override
    public List<Auction> findActiveAuctions() {
        return auctionRepository.findByActive(Status.ACTIVE);
    }

    @Override
    public Auction findByStartDate(LocalDateTime start) {
        return auctionRepository.findByStart(start);
    }

    @Override
    public void saveAuction(Auction auction) {
        if(auction.getActive() == null || auction.getActive().toString().equals(""))
            auction.setActive(Status.ACTIVE);

        auctionRepository.save(auction);
    }

    @Override
    public List<Auction> findAuctionsByName(String name) {
        return auctionRepository.findByName(name);
    }


}
