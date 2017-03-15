package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.AuctionItem;
import com.nintendo.buyback.model.Bid;
import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.repository.AuctionRepository;
import com.nintendo.buyback.util.DateUtils;
import com.nintendo.buyback.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.ImportAutoConfiguration;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

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
        auction.setAuctionItens(auctionItemService.bookProducts(auction));
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

    /**
     * Simula um lance que será realizado no leilão, faz mais sentido a lógica estar no leilão do que no lance em si
     * O lance (bid) será criado um bid para cada Item no Leilão, com valores divergentes
     * @param auction Leilão que será realizado o lance
     * @return Lista de bid
     */
    @Override
    @Transactional
    public Auction simulateBid(long auctionId, long companyId, double bidValue) {
        /*Primeiro, precisamos encontrar as informações necessárias para realizar a lógica*/
        Auction auction = findOneAuction(auctionId);
        Company bidder = companyService.findOneCompany(companyId);

        /*Preciso verificar quais itens já foram bidados e quais posso bidar
        * Nessa lista, vou colocar os itens que não poderão ser bidados nesse lance*/
        HashMap<Long, AuctionItem> cantBidItens = new HashMap<>();
        if(auction.getBids() != null && auction.getBids().size() > 0)
        {
            /* *
                * Se o valor do BID atual, for menor, do que os bids que estou iterando,
                * então não posso usar esses produtos.
                *
                * Posso passar mais de uma vez pelo mesmo produto, por isso coloco em um hash, assim não
                * preciso verificar se o produto criado já está na lista de produtos
                *
                * */
            for (Bid bid : auction.getBids()) {
                if(bidValue < bid.getValue()) {
                    for (AuctionItem auctionItem : bid.getAuctionItens()) {

                        cantBidItens.put(auctionItem.getId(), auctionItem);
                    }
                }
            }
        }

        int totalItems = (int) Math.round(bid.getCompany().getBudget() / bid.getValue());
        final HashMap<Long, AuctionItem> bidAuctionItems = new HashMap<>();

        while(totalItems > 0) {
            for (AuctionItem auctionItem : bid.getAuction().getAuctionItens()) {
                AuctionItem bidItem = bidAuctionItems.get(auctionItem.getId());
                if(bidItem == null)
                {
                    bidItem = new AuctionItem();
                    bidItem.setBid(bid);
                }
                auctionItem.setQuantityStored(auctionItem.getQuantityStored() - 1);
                bidItem.setQuantityStored(bidItem.getQuantityStored()+1);


                if(bidItem.getProduct() == null)
                    bidItem.setProduct(auctionItem.getProduct());
                if(bidItem.getAuction() == null)
                    bidItem.setAuction(bid.getAuction());


                bidAuctionItems.put(auctionItem.getId(),bidItem);
                if (--totalItems <= 0) break;
            }
        }
        bid.setAuctionItens(new HashSet<>(bidAuctionItems.values()));

        return bid;
    }


}
