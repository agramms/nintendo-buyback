package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Bid;
import org.springframework.stereotype.Service;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 13/03/2017 02:14
 * Project Name: nintendo-buyback
 */
public interface BidService {
    Bid simulateBid(Bid bid);
}
