package com.nintendo.buyback.repository;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Bid;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("bidRepository")
public interface BidRepository extends JpaRepository<Bid, Long> {
    List<Bid> findByAuction(Auction auction);
}
