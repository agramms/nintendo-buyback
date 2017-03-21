package com.nintendo.buyback.service;

import com.nintendo.buyback.model.*;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.repository.BidRepository;
import com.nintendo.buyback.repository.CompanyRepository;
import org.apache.tomcat.jni.Local;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.NotActiveException;
import java.time.LocalDateTime;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 13/03/2017 02:14
 * Project Name: nintendo-buyback
 */
@Service("bidService")
public class BidServiceImpl implements BidService {
    @Autowired
    private BidRepository bidRepository;

    @Autowired
    private CompanyRepository companyRepository;

    @Autowired
    private AuctionService auctionService;

    @Override
    public List<Bid> findBidsByAuction(Auction auction) {
        return bidRepository.findByAuction(auction);
    }

    private void persists(Bid bid)
    {
        Company company = bid.getCompany();
        company.getBids().add(bid);
        companyRepository.save(company);
    }


    @Override
    @Transactional
    public void makeBid(long auctionId, Company bidder, Bid bid)  throws Exception
    {
        Auction auction = auctionService.findOneAuction(auctionId);

        if(LocalDateTime.now().isBefore(auction.getStart()) || LocalDateTime.now().isAfter(auction.getFinish()))
            throw new Exception("Não pode ser realizado lance fora do horario de leilão");

        auction.getBids().add(getBestBidOption(auction, bidder, bid));
         /*Seto valor que a empresa gastou para temporario*/
        bidder.setBided(bid.getBidItems().size()*bid.getValue());
        bidder.setBudget(bidder.getBudget()-bidder.getBided());


        //bid.getBidItems().stream().forEach();
        this.saveBid(bid);
        auctionService.saveAuction(auction);
    }

    /**
     * Simula um lance que será realizado no leilão, faz mais sentido a lógica estar no leilão do que no lance em si
     * O lance (bid) será criado um bid para cada Item no Leilão, com valores divergentes
     * @param auctionId id do Leilão que será realizado o lance
     * @param bidder Empresa que está realizando o lance
     * @param bid objeto bid com valor do lance
     * @return Lista de bid
     */
    @Override
    @Transactional(readOnly = true)
    public Bid simulateBid(long auctionId, Company bidder, Bid bid) throws Exception {
        Auction auction = auctionService.findOneAuction(auctionId);
        return getBestBidOption(auction, bidder, bid);
    }

    @Override
    public void saveBid(Bid bid) {
        bidRepository.save(bid);
    }

    private Bid getBestBidOption(Auction auction, Company bidder, Bid bid) throws Exception
    {
        /*Primeiro, precisamos encontrar as informações necessárias para realizar a lógica*/
        /*Valor que tenho que ter no leilão para que não tenha prejuizo*/
        final double auctionValue =  (auction.getAuctionItems().size() * 15);
        final double minProfit = (auctionValue*0.2)+auctionValue;
        double minProfitItem = 18;
        /* Preciso validar o menor valor para o primeiro lance*/
        final int qtdItems = (int) Math.floor(bidder.getBudget() / bid.getValue());

        /*Verifico se o leilão está ativo*/
        if(!auction.getActive().equals(Status.ACTIVE))
            throw new NotActiveException("Leilão não está ativo");

        if(bidder.getBudget() <= 0)
            throw new Exception("Empresa não tem orçamento para realizar lances");

        if(bid.getValue() < minProfitItem)
            throw new Exception("Valor do lance deve ser maior que R$"+minProfit);

        /*Agora, preciso ordenar a lista de items do leilão, para saber qual a maior
        * chance de ganho do leilão naquele valor
        * Esse valor é um simulação, então consulto a base e ordeno os bids por valor*/
        List<AuctionItem> bestOptions = auction.getAuctionItems().stream()
                                                .sorted(Comparator
                                                        .comparingDouble(item -> item.getBidItems().stream()
                                                                .mapToDouble(bidItem -> bidItem.getBid().getValue())
                                                                .min()
                                                                .orElse(0)
                                                        )
                                                )
                                                .filter((AuctionItem item) -> {
                                                            return item.getBidItems().stream()
                                                                    .mapToDouble(bidItem -> bidItem.getBid().getValue())
                                                                    .max()
                                                                    .orElse(0)
                                                                    < bid.getValue();
                                                        }
                                                )
                                                .limit(qtdItems)
                                                .collect(Collectors.toList());

        /*Bom, bestObtions agora tem a lista de AuctionItems ordenados por valor
        * Então, posso ter mais de uma vez um produto que foi bidado, mas a idéia é pegar os de menor valor
        * e tentar bidar*/
        bid.setActive(Status.ACTIVE);
        bid.setAuction(auction);
        bid.setCompany(bidder);
        bestOptions.stream()
                .forEach(auctionItem -> {
                    BidItem bidItem = new BidItem(bid, auctionItem);
                    auctionItem.getBidItems().add(bidItem);
                    bid.getBidItems().add(bidItem);
                }
                );


        return bid;
    }
}
