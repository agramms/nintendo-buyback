package com.nintendo.buyback.repository;

import com.nintendo.buyback.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("categoryRepository")
public interface CategoryRepository extends JpaRepository<Category, Long> {
    String GET_TOP_CATEGORIES = "Select category.* " +
                                                    "from category " +
                                                    "inner join product " +
                                                    "on category.category_id = product.category_id " +
                                                    "group by  category.category_id, category.name " +
                                                    "order by  sum(quantity) desc ";
    String GET_AUCTION_CATEGORIES="Select c.* " +
                                    "from auction a " +
                                    " inner join auction_item ai " +
                                    "  on a.auction_id = ai.auction_id " +
                                    " inner join product p " +
                                    "  on p.product_id = ai.product_id " +
                                    " inner join category c " +
                                    "  on c.category_id = p.category_id" +
                                    " Where auction.auction_id = :auction_id" +
                                    " group by c.category_id, c.name";

    Category findByName(String name);
    @Query(value = GET_TOP_CATEGORIES, nativeQuery = true)
    List<Category> findTopCategoriesInStock();

    @Query(value = GET_AUCTION_CATEGORIES, nativeQuery = true)
    List<Category> findAuctionCategory(@Param("auction_id") long id);
}
