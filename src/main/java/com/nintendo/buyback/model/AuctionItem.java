package com.nintendo.buyback.model;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by avieira on 09/03/2017.
 */
@Entity
@Table(name = "auction_item")
public class AuctionItem {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "auction_item_id")
    private long id;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY,  optional = false)
    @JoinColumn(name="auction_id", nullable = false)
    private Auction auction;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name="product_id", nullable = false)
    private Product product;

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "auction_item_bid", joinColumns = @JoinColumn(name = "auction_item_id"), inverseJoinColumns = @JoinColumn(name = "bid_id"))
    private Set<Bid> bids;

    /**
     * Getters and Setters
     */

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Auction getAuction() {
        return auction;
    }

    public void setAuction(Auction auction) {
        this.auction = auction;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Set<Bid> getBids() {
        return bids;
    }

    public void setBids(Set<Bid> bids) {
        this.bids = bids;
    }
}
