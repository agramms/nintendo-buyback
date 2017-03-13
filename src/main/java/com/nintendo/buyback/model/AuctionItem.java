package com.nintendo.buyback.model;

import javax.persistence.*;

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

    @Column(name = "qtdStored")
    private int quantityStored;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY,  optional = false)
    @JoinColumn(name="auction_id", nullable = false)
    private Auction auction;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name="product_id", nullable = false)
    private Product product;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name="bid_id")
    private Bid bid;

    /**
     * Getters and Setters
     */

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getQuantityStored() {
        return quantityStored;
    }

    public void setQuantityStored(int quantityStored) {
        this.quantityStored = quantityStored;
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

    public Bid getBid() {
        return bid;
    }

    public void setBid(Bid bid) {
        this.bid = bid;
    }
}
