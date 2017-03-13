package com.nintendo.buyback.model;

import com.nintendo.buyback.model.enumerators.Status;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.time.LocalDate;
import java.util.Set;

/**
 * Created by avieira on 09/03/2017.
 */
@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_id")
    private long id;

    @Column(name = "name")
    @NotEmpty(message = "*Informar um nome para o produto")
    private String name;

    @Column(name = "active")
    @Enumerated(EnumType.ORDINAL)
    private Status active;

    @Column(name = "quantity")
    @Min(value = 0, message = "Quantidade não pode ser menor que 0")
    private int quantity;

    @Column(name = "year_published")
    private int yearPublished;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="category_id")
    private Category category;

    @OneToMany(mappedBy = "product",fetch = FetchType.LAZY)
    private Set<AuctionItem> auctionItens;

    /**
     * Getters and Setters
     */

    /**
     * Id uníco na tabela de produtos
     * @return
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getYearPublished() {
        return yearPublished;
    }

    public void setYearPublished(int yearPublished) {
        this.yearPublished = yearPublished;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Set<AuctionItem> getAuctionItens() {
        return auctionItens;
    }

    public void setAuctionItens(Set<AuctionItem> auctionItens) {
        this.auctionItens = auctionItens;
    }
}
