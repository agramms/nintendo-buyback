package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.AuctionItem;

import java.util.List;
import java.util.Set;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 12/03/2017 07:53
 * Project Name: nintendo-buyback
 */
public interface AuctionItemService {
    Set<AuctionItem> bookProducts(Auction auction);
    void saveAuctionItens(List<AuctionItem> auctionItens);
}
