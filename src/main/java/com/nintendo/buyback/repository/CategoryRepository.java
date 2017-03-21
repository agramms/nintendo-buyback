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
                                                    "having sum(quantity) > 0 "+
                                                    "order by  sum(quantity) desc " ;


    Category findByName(String name);
    @Query(value = GET_TOP_CATEGORIES, nativeQuery = true)
    List<Category> findTopCategoriesInStock();

}
