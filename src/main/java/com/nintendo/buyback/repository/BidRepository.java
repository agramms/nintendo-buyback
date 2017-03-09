package com.nintendo.buyback.repository;

import com.nintendo.buyback.model.Bid;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("bidRepository")
public interface BidRepository extends JpaRepository<Bid, Long> {
}
