package com.nintendo.buyback.repository;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Status;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository("auctionRepository")
public interface AuctionRepository extends JpaRepository<Auction, Long> {
    List<Auction> findByActive(Status active);
    Auction findByStart(LocalDateTime start);
}
