package com.nintendo.buyback.model;

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
    private Status active;

    @Column(name = "qtdLicenses")
    @NotEmpty(message="*Favor informar a quantidade de usuários que poderão ser cadastrados")
    private int qtdLicenses;

    @OneToMany(mappedBy = "company",fetch = FetchType.LAZY)
    private Set<User> users;

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
}
