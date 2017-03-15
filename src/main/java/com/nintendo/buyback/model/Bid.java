package com.nintendo.buyback.model;

import com.nintendo.buyback.model.enumerators.Status;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Min;
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

    @Column(name="qtd_booked")
    private int qtdBooked;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="company_id")
    private Company company;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="auction_id")
    private Auction auction;

    @OneToMany(mappedBy = "bid",fetch = FetchType.LAZY)
    private Set<AuctionItem> auctionItens;

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

    public Set<AuctionItem> getAuctionItens() {
        return auctionItens;
    }

    public void setAuctionItens(Set<AuctionItem> auctionItens) {
        this.auctionItens = auctionItens;
    }


}
