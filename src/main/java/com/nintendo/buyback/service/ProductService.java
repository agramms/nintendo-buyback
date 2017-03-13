package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Category;
import com.nintendo.buyback.model.Product;

import java.util.List;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 12/03/2017 08:08
 * Project Name: nintendo-buyback
 */
public interface ProductService {
    List<Product> listBestChoices(int qtdProducts);
    List<Product> findProductByCategoryIdOrderByYear(Category category);
    Product bookOneProduct(Product product);
    int getQtdProductsStoked();
}
