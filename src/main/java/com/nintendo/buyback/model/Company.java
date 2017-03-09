package com.nintendo.buyback.model;

import com.nintendo.buyback.model.enumerators.Status;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by avieira on 06/03/2017.
 */
@Entity
@Table(name="company")
public class Company {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "company_id")
    private long id;

    @Column(name = "name")
    @NotEmpty(message = "*Informar o nome da empresa")
    private String name;

    @Column(name = "active")
    @NotEmpty(message="*Favor informar o status da empresa")
    private Status active;

    @Column(name = "qtdLicenses")
    @NotEmpty(message="*Favor informar a quantidade de usuários que poderão ser cadastrados")
    private int qtdLicenses;

    @Column(name = "budget")
    private double budget;

    @OneToMany(mappedBy = "company",fetch = FetchType.LAZY)
    private Set<User> users;

    @OneToMany(mappedBy = "company",fetch = FetchType.LAZY)
    private Set<Bid> bids;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "company_auction", joinColumns = @JoinColumn(name = "company_id"), inverseJoinColumns = @JoinColumn(name = "auction_id"))
    private Set<Auction> auctions;

    /**
     * Id interno da empresa, número único na base de dados e criado automaticamente
     * @return
     */
    public long getId() {
        return id;
    }

    /**
     * Informa o ID da emrpesa
     * @param id
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * String com nome da emrpesa
     * @return String
     */
    public String getName() {
        return name;
    }

    /**
     * Define o nome da empresa
     * @param name - Nome da empresa
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Obtem o status da empresa Enumerador de Status
     * @return Enumerado com o status da empresa
     */
    public Status getActive() {
        return active;
    }

    /**
     * Informar o status da empresa
     * @param active
     */
    public void setActive(Status active) {
        this.active = active;
    }

    /**
     * Informar a quantidade de usuários que podem estar ativos por empresa
     * @return inteiro com número de licenças para empresa
     */
    public int getQtdLicenses() {
        return qtdLicenses;
    }

    /**
     * Retorna a quantidade de licenças da empresa
     * @param qtdLicenses
     */
    public void setQtdLicenses(int qtdLicenses) {
        this.qtdLicenses = qtdLicenses;
    }

    /**
     * Obtem a lista de usuários
     * @return
     */
    public Set<User> getUsers() {
        return users;
    }

    /**
     * Define a lista de usuários para a empresa
     * @param users
     */
    public void setUsers(Set<User> users) {
        this.users = users;
    }

    /**
     * Obtem o orçamento da empresa
     * @return Entidade Lance
     */
    public double getBudget() {
        return budget;
    }

    /**
     * Altera orçamento da empresa
     * @param budget
     */
    public void setBudget(double budget) {
        this.budget = budget;
    }

    /**
     * Obem a lista de lances efetuados pela empresa
     * @return
     */
    public Set<Bid> getBids() {
        return bids;
    }

    /**
     * Altera o valor da lista de lances
     * @param bids
     */
    public void setBids(Set<Bid> bids) {
        this.bids = bids;
    }

    /**
     * Leilões que a empresa participou ou está participando
     * @return retorna lista de Leilões
     */
    public Set<Auction> getAuctions() {
        return auctions;
    }

    /**
     * Altera a lista de leilões que a empresa está participando
     * @param auctions
     */
    public void setAuctions(Set<Auction> auctions) {
        this.auctions = auctions;
    }
}
