package com.nintendo.buyback.model;

import com.nintendo.buyback.model.enumerators.Status;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by avieira on 09/03/2017.
 */
@Entity
@Table(name = "bid")
public class Bid {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "bid_id")
    private long id;

    @Column(name = "active")
    @Enumerated(EnumType.ORDINAL)
    private Status active;

    @Column(name = "value")
    @Min(value = 0, message = "*Todo lance deve ter um valor")
    private double value;

    @Column(name = "is_winner", columnDefinition = "boolean default true", nullable = false)
    private boolean isWinner;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="company_id")
    private Company company;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="auction_id")
    private Auction auction;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "bid")
    private Set<BidItem> bidItems;

    /**
     * Constructor
     */
    public Bid(Company company, Auction auction, Set<BidItem> bidItems) {
        this.company = company;
        this.auction = auction;
        this.bidItems = bidItems;
    }

    public Bid() {
        this.bidItems = new HashSet<>();
    }

    /**
     * Getters e Setters
     */


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Status getActive() {
        return active;
    }

    public void setActive(Status active) {
        this.active = active;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public Auction getAuction() {
        return auction;
    }

    public void setAuction(Auction auction) {
        this.auction = auction;
    }

    public Set<BidItem> getBidItems() {
        return bidItems;
    }

    public void setBidItems(Set<BidItem> bidItems) {
        this.bidItems = bidItems;
    }

    public boolean isWinner() {
        return isWinner;
    }

    public void setWinner(boolean winner) {
        this.isWinner = winner;
    }
}
