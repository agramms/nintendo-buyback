package com.nintendo.buyback.model;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.util.HashSet;
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

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "auctionItem")
    private Set<BidItem> bidItems;

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

    public Set<BidItem> getBidItems() {
        return bidItems;
    }

    public void setBidItems(Set<BidItem> bidItems) {
        this.bidItems = bidItems;
    }


    public AuctionItem() {
        this.bidItems = new HashSet<>();
    }
}
