package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.AuctionItem;
import com.nintendo.buyback.model.Category;
import com.nintendo.buyback.model.Product;
import com.nintendo.buyback.repository.AuctionItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

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

    @Autowired
    private CategoryService categoryService;

    @Override
    public Set<AuctionItem> bookProducts(Auction auction) {
        final HashMap<Long, AuctionItem> bookedProducts = new HashMap<>();
        int wantToBook = auction.getQtdMaxProducts();   /*Quantidade de produtos que quero no meu leilão*/
        final int stoked = productService.getQtdProductsStoked(); /*Quantidade de itens no estoque*/
        /*Se o estoque estiver zerado, não temos nada a ser feito*/
        if(stoked <= 0)
            throw new NullPointerException("O estoque encontra-se zerado, nenhum item pode ser reservado");
        /*Primeiro, verifico se a quantidade em estoque é menor do que estou pedindo
        * caso seja, então quero tudo que tem no estoque*/
        if(wantToBook > stoked)
            wantToBook = stoked;

        /*Verifico as categorias que tenho na base, certo que tenho a quantidade de itens que desejo*/
        final List<Category> categories = categoryService.findTopCategoriesInStock(); /*Verifico as categorias que existem na base de dados*/

        /*Para cada categoria, verifico os produtos
        * Sei que na query vão me trazer somente categorias que tem produtos, então vou passar por todos tentando pegar um produto de cada categoria*/
        do
        for (Category category : categories)
        {
            for (Product product : category.getProducts()
                                    .stream()
                                    .filter(p -> p.getQuantity() > 0)
                                    .collect(Collectors.toList()))
            {
                /*Se dentro da categoria já encontrei os que preciso, retorno para o principal para sai do loop*/
                if(bookedProducts.size() < wantToBook)
                {
                    AuctionItem auctionItem = bookedProducts.get(product.getId()); /*Verifico se o produto esta na minha lista, para incrementar, ou se é novo*/
                    if(auctionItem == null)
                        auctionItem = new AuctionItem();
                    auctionItem.setAuction(auction);
                    product.setQuantity(product.getQuantity()-1);
                    auctionItem.setProduct(product);
                    auctionItem.setQuantityStored(auctionItem.getQuantityStored() + 1);
                    bookedProducts.put(product.getId(), auctionItem);
                }
                else
                    break;
            }
        }while (bookedProducts.size() < wantToBook);

        return new HashSet<>(bookedProducts.values());
    }

    @Override
    public void saveAuctionItens(List<AuctionItem> auctionItens) {
        auctionItemRepository.save(auctionItens);
    }
}
