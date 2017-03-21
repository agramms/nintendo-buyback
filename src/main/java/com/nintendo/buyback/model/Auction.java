package com.nintendo.buyback.model;

import com.nintendo.buyback.model.enumerators.Status;
import org.hibernate.annotations.Cascade;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by avieira on 09/03/2017.
 */
@Entity
@Table(name = "auction")
public class Auction {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "auction_id")
    private long id;

    @Column(name = "name")
    @NotEmpty(message = "*Informar um nome para o Leilão")
    private String name;

    @Column(name = "active")
    private Status active;

    @Column(name = "start_date")
    private LocalDateTime start;

    @Column(name = "finish_date")
    private LocalDateTime finish;

    @Column(name = "qtd_max_products")
    private int qtdMaxProducts;

    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "auctions")
    private Set<Company> companies;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "auction",fetch = FetchType.LAZY)
    private Set<Bid> bids;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "auction",fetch = FetchType.EAGER)
    private Set<AuctionItem> auctionItems;

    /**
     * Getters and Setters
     */

    /**
     * ID único na tabela de Leilões
     * @return retorna o id do leilão
     */
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Status getActive() {
        return active;
    }

    public void setActive(Status active) {
        this.active = active;
    }

    public LocalDateTime getStart() {
        return start;
    }

    public void setStart(LocalDateTime start) {
        this.start = start;
    }

    public LocalDateTime getFinish() {
        return finish;
    }

    public void setFinish(LocalDateTime finish) {
        this.finish = finish;
    }

    public int getQtdMaxProducts() {
        return qtdMaxProducts;
    }

    public void setQtdMaxProducts(int qtdMaxProducts) {
        this.qtdMaxProducts = qtdMaxProducts;
    }

    public Set<Company> getCompanies() {
        return companies;
    }

    public void setCompanies(Set<Company> companies) {
        this.companies = companies;
    }

    public Set<Bid> getBids() {
        return bids;
    }

    public void setBids(Set<Bid> bids) {
        this.bids = bids;
    }

    public Set<AuctionItem> getAuctionItems() {
        return auctionItems;
    }

    public void setAuctionItems(Set<AuctionItem> auctionItems) {
        this.auctionItems = auctionItems;
    }

    @Override
    public String toString()
    {
        return "#"+this.getId() +" - "+ this.getName() + " de: "+ this.getStart().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")) + " até " + this.getFinish().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm"));
    }

    /**
     * Constructor
     */
    public Auction() {
        this.companies = new HashSet<>();
        this.auctionItems = new HashSet<>();
    }

    public Auction(Set<Company> companies, Set<AuctionItem> auctionItems) {
        this.companies = companies;
        this.auctionItems = auctionItems;
    }
}
