package com.nintendo.buyback.repository;

import com.nintendo.buyback.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("productRepository")
public interface ProductRepository extends JpaRepository<Product, Long> {
}
