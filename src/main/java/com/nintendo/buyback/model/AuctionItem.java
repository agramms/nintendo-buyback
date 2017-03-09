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

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="auction_id")
    private Auction auction;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="product_id")
    private Product product;

    @ManyToOne(cascade = CascadeType.ALL)
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
}
