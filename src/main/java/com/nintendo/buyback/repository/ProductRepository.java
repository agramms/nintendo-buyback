package com.nintendo.buyback.repository;

import
        com.nintendo.buyback.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("productRepository")
public interface ProductRepository extends JpaRepository<Product, Long> {
    String GET_PRODUCTS_BY_CATEGORYID_ORDERBY_YEAR="Select * " +
            " from product p " +
            " where category_id = :category_id " +
            "  and quantity > 0 " +
            "  and active = 1 " +
            " Order by year_published ";
    String GET_TOTAL_STOCK = "Select sum(quantity) from product";

    @Query(value = GET_PRODUCTS_BY_CATEGORYID_ORDERBY_YEAR, nativeQuery = true)
    List<Product> findProductByCategoryIdOrderByYear(@Param("category_id") long category_id);

    @Query(value = GET_TOTAL_STOCK, nativeQuery = true)
    int qtdProductStocked();
}
