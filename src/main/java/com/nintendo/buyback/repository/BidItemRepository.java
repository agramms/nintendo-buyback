package com.nintendo.buyback.repository;

import com.nintendo.buyback.model.BidItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 18/03/2017 23:16
 * Project Name: nintendo-buyback
 */
@Repository("bidItemRepository")
public interface BidItemRepository extends JpaRepository<BidItem, Long> {
}
