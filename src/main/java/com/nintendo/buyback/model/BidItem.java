package com.nintendo.buyback.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 18/03/2017 13:39
 * Project Name: nintendo-buyback
 */
@Entity
@Table(name = "bid_item")
@IdClass(BidItemId.class)
public class BidItem implements Serializable{

    @EmbeddedId
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "bid_id")
    private Bid bid;

    @EmbeddedId
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "auction_item_id")
    private AuctionItem auctionItem;

    @Column(name = "is_winner", columnDefinition = "boolean default false", nullable = false)
    private boolean isWinner;

    public Bid getBid() {
        return bid;
    }

    public void setBid(Bid bid) {
        this.bid = bid;
    }

    public AuctionItem getAuctionItem() {
        return auctionItem;
    }

    public void setAuctionItem(AuctionItem auctionItem) {
        this.auctionItem = auctionItem;
    }

    public boolean isWinner() {
        return isWinner;
    }

    public void setWinner(boolean winner) {
        isWinner = winner;
    }

    public BidItem(Bid bid, AuctionItem auctionItem) {
        this.bid = bid;
        this.auctionItem = auctionItem;
    }

    public BidItem() {
    }
}
