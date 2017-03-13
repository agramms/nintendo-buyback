package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Status;

import java.time.LocalDateTime;
import java.util.List;

public interface AuctionService {
    List<Auction> findAllAuctions();
    List<Auction> findActiveAuctions();
    Auction findByStartDate(LocalDateTime start);
    void saveAuction(Auction auction);
    List<Auction> findAuctionsByName(String name);
    List<Auction> findAuctionsByNameAdmin(String name);
    List<Auction> findAuctionsByCompany(Company company);
    void createAuction(Auction auction);
    void engage(Company company, long auctionId);
    Auction findOneAuction(long auctionId);
    void auctionBlock(long auctionId);
    void auctionActivate(long auctionId);
}
