package com.nintendo.buyback.repository;

import com.nintendo.buyback.model.AuctionItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("auctionItemRepository")
public interface AuctionItemRepository extends JpaRepository<AuctionItem, Long> {
}
