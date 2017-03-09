package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.repository.AuctionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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


}
