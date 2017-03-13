package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.AuctionItem;
import com.nintendo.buyback.model.Product;
import com.nintendo.buyback.repository.AuctionItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 12/03/2017 08:04
 * Project Name: nintendo-buyback
 */
@Service("auctionItemService")
public class AuctionItemServiceImpl implements AuctionItemService {

    @Autowired
    private ProductService productService;

    @Autowired
    private AuctionItemRepository auctionItemRepository;

    @Override
    public List<AuctionItem> bookProducts(Auction auction) {
        final HashMap<Long, AuctionItem> bookedProducts = new HashMap<>();
        int qtdItems = auction.getQtdMaxProducts();
        int qtdStocked = productService.getQtdProductsStoked();
        /*Primeiro pego a lista de melhores opções*/
        if(qtdItems > qtdStocked)
            qtdItems = qtdStocked;

        while (qtdItems > 0) {
            for (Product product : productService.listBestChoices(qtdItems)) {
                AuctionItem auctionItem = bookedProducts.get(product.getId());
                if (auctionItem == null) {
                    auctionItem = new AuctionItem();
                    auctionItem.setAuction(auction);
                }
                product.setQuantity(product.getQuantity()-1);
                auctionItem.setProduct(product);
                auctionItem.setQuantityStored(auctionItem.getQuantityStored() + 1);
                bookedProducts.put(product.getId(), auctionItem);
                if(--qtdItems <= 0)
                    break;
            }
        }
        return new ArrayList<>(bookedProducts.values());
    }

    @Override
    public void saveAuctionItens(List<AuctionItem> auctionItens) {
        auctionItemRepository.save(auctionItens);
    }
}
