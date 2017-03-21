package com.nintendo.buyback.service;

import com.nintendo.buyback.model.*;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.repository.AuctionRepository;
import com.nintendo.buyback.util.DateUtils;
import com.nintendo.buyback.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service("auctionService")
public class AuctionServiceImpl implements AuctionService {

    @Autowired
    private AuctionRepository auctionRepository;

    @Autowired
    private AuctionItemService auctionItemService;

    @Autowired
    private BidService bidService;

    @Autowired
    private CompanyService companyService;

    @Override
    public List<Auction> findAllAuctions() {
        return auctionRepository.findAll();
    }

    @Override
    public List<Auction> findActiveAuctions() {
        return auctionRepository.findByActive(Status.ACTIVE);
    }

    @Override
    public Auction findByStartDate(LocalDateTime start) {
        return auctionRepository.findByStart(start);
    }

    @Override
    public void saveAuction(Auction auction) {
        if(auction.getActive() == null || auction.getActive().toString().equals(""))
            auction.setActive(Status.ACTIVE);

        auctionRepository.save(auction);
    }

    @Override
    public List<Auction> findAuctionsByName(String name) {
        if(!StringUtils.isNullOrEmpty(name))
            return auctionRepository.findByNameContaining(name);

        /*TODO: verificar*/
        List<Status>statuses = new ArrayList<>();

        return auctionRepository.findByActive(Status.ACTIVE);
    }

    @Override
    public List<Auction> findAuctionsByNameAdmin(String name) {
        if(!StringUtils.isNullOrEmpty(name))
            return auctionRepository.findByNameContaining(name);
        return auctionRepository.findAll();
    }

    @Override
    public List<Auction> findAuctionsByCompany(Company company) {
        List<Company> companies = new ArrayList<>();
        if(company != null)
            companies.add(company);
        return auctionRepository.findByCompanies(companies);
    }


    @Override
    @Transactional
    public void createAuction(Auction auction) {
        auction.setActive(Status.ACTIVE);
        if(DateUtils.isNullOrEmpty(auction.getStart()))
        {
            auction.setStart(DateUtils.todayOf(8, 0));
        }
        if(DateUtils.isNullOrEmpty(auction.getFinish()))
        {
            auction.setFinish(DateUtils.todayOf(20, 0));
        }
        if(StringUtils.isNullOrEmpty(auction.getName()))
        {
            auction.setName("Leilão Diário");
        }
        if(auction.getQtdMaxProducts() <= 0) {
            auction.setQtdMaxProducts(100);
        }
        this.saveAuction(auction); /*Tenho que salvar para obter o id, porém se apresentar algum erro, como está anotado como @Transacional, faz o rollback de tudo*/
        auction.setAuctionItems(auctionItemService.bookProducts(auction));
        this.saveAuction(auction);
    }

    @Override
    public void engage(Company company, long auctionId) {
        Auction auction = auctionRepository.findOne(auctionId);
        auction.getCompanies().add(company);
        company.getAuctions().add(auction);
        auctionRepository.save(auction);
    }

    @Override
    public Auction findOneAuction(long auctionId) {
        return auctionRepository.findOne(auctionId);
    }

    @Override
    public void auctionBlock(long auctionId) {
        Auction auction = auctionRepository.findOne(auctionId);
        auction.setActive(Status.BLOCKED);
        auctionRepository.save(auction);
    }

    @Override
    public void auctionActivate(long auctionId) {
        Auction auction = auctionRepository.findOne(auctionId);
        auction.setActive(Status.ACTIVE);
        auctionRepository.save(auction);
    }

    @Override
    @Transactional
    public void auctionFinish(long auctionId) {
        Auction auction = auctionRepository.findOne(auctionId);
        auction.setActive(Status.INACTIVE);


        auction.getAuctionItems().stream()
                .forEach(item -> item.getBidItems().stream()
                                .max(Comparator.comparingDouble(bidItem -> bidItem.getBid().getValue()))
                                .ifPresent((BidItem bidItem) -> {
                                    bidItem.getBid().setWinner(true);
                                    bidItem.setWinner(true);
                                })
                        );
        /*Desconto os valores dos ganhadores, somando o valor que estava reservado para o leilão*/
        auction.getBids().stream()
            .filter(bid -> bid.isWinner())
            .forEach(bid -> bid.getCompany().setBudget((bid.getCompany().getBided()+bid.getCompany().getBudget())-bid.getValue()))
        ;
        /*Zero os valores bidados dos participantes*/
        auction.getCompanies().stream()
                .forEach(company -> company.setBided(0));


        saveAuction(auction);
    }


}
