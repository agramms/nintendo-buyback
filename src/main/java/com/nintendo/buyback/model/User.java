package com.nintendo.buyback.model;


import java.util.Set;

import javax.persistence.*;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.data.annotation.Transient;

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private long id;

    @Column(name = "email")
    @Email(message = "*Favor informar um endereço de email válido")
    @NotEmpty(message = "*O endereço de email é imporante para podermos idenficar seu cadastro")
    private String email;

    @Column(name = "password")
    @Length(min = 5, message = "*Sua senha deve ter no mínimo 5 caracteres")
    @NotEmpty(message = "*Por favor, informe uma senha para acesso a sua conta")
    @Transient
    private String password;

    @Column(name = "name")
    @NotEmpty(message = "*Informar o nome completo")
    private String name;

    @Column(name = "active")
    @Enumerated(EnumType.ORDINAL)
    private Status active;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="company_id")
    private Company company;


    /**
     * ID interno do usuário, numerádo automaticamente
     * @return Inteiro representando o id do usuário
     */
    public long getId() {
        return id;
    }

    /**
     * Altera o ID do usuário
     * @param id identificador deve ser único
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * Obtem a senha cadastrada no Banco
     * @return String com a senha criptografada
     */
    public String getPassword() {
        return password;
    }

    /**
     * Informar a senha ( Aqui já deverá informar a senha criptograda para ser salva no banco )
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * Nome completo do Usuário
     * @return String com nome completo
     */
    public String getName() {
        return name;
    }

    /**
     * Informar o nome completo
     * @param name String
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Obtem o email do usuário cadastrado, o email é unico na base de dados
     * @return
     */
    public String getEmail() {
        return email;
    }

    /**
     * Retornar o email cadastrado
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Verifica se o usuário está Ativo, inativo ou Bloqueado (Enum Status)
     * @return Número represetnando Enum Active
     */
    public Status getActive() {
        return active;
    }

    /**
     * Informar o status do usuário
     * @param active
     */
    public void setActive(Status active) {
        this.active = active;
    }

    /**
     * Obtem lista de permissões para o usuário
     * @return
     */
    public Set<Role> getRoles() {
        return roles;
    }

    /**
     * Informar nova role para o usuário
     * @param roles
     */
    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    /**
     * Instancia de Empresa que o usuário representa
     * @return
     */
    public Company getCompany() {
        return company;
    }

    /**
     * Informar a empresa que o usuário representa
     * @param company
     */
    public void setCompany(Company company) {
        this.company = company;
    }
}
