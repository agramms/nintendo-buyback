package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.repository.AuctionRepository;
import com.nintendo.buyback.util.DateUtils;
import com.nintendo.buyback.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@Service("auctionService")
public class AuctionServiceImpl implements AuctionService {

    @Autowired
    private AuctionRepository auctionRepository;

    @Autowired
    private AuctionItemService auctionItemService;

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
            auction.setName("Leilão "+auction.getId());
        }
        if(auction.getQtdMaxProducts() <= 0) {
            auction.setQtdMaxProducts(100);
        }
        this.saveAuction(auction);
        auction.setAuctionItens(
                new HashSet<>(
                        auctionItemService.bookProducts(auction)
                )
        );
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


}
