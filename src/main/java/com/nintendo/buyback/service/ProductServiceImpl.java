package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Category;
import com.nintendo.buyback.model.Product;
import com.nintendo.buyback.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import java.util.ArrayList;
import java.util.List;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 12/03/2017 08:10
 * Project Name: nintendo-buyback
 */
@Service("productService")
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryService categoryService;

    /**
     * Retorna uma lista com a quantidade de produtos informada
     * Para verificar a melhor seleção, utilizar os seguintes passos
     *    1. Selecionar Categorias que possuem mais jogos
     *    2. Selecionar jogos com maior quantidade
     * @param qtdProducts
     * @return
     */
    @Override
    public List<Product> listBestChoices(int qtdProducts) {
        List<Product> bestChoice = new ArrayList<Product>();
        List<Category> categories = categoryService.findTopCategoriesInStock();

        /*Primerio buscando na categoria, para verificar se consigo formar a quantidade de intens necessária para o Leilão
        * Caso não complete os itens, vou para a proxima categoria, até a última tentando coletar a quantidade de produtos (diferentes)
        *
        * Se pegar maior do que a quantidade de produtos, tudo bem, estou enviando as melhores escolhas apenas, quando for adicionar o leilão deve ser feita essa verificação*/
        for (Category category : categories) {
            /* Buscando pelos produtos da categoria*/
            bestChoice.addAll(this.findProductByCategoryIdOrderByYear(category));
            if(bestChoice.size() >= qtdProducts)
                return bestChoice;
        }

        return bestChoice;
    }

    @Override
    public List<Product> findProductByCategoryIdOrderByYear(Category category) {
        return productRepository.findProductByCategoryIdOrderByYear(category.getId());
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public Product bookOneProduct(Product product) {
        product.setQuantity(product.getQuantity()-1);
        productRepository.save(product);
        return product;
    }

    @Override
    public int getQtdProductsStoked() {
        return productRepository.qtdProductStocked();
    }
}
