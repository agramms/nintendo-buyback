package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Category;
import com.nintendo.buyback.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 12/03/2017 08:55
 * Project Name: nintendo-buyback
 */
public interface CategoryService {
    List<Category> findTopCategoriesInStock();
    Category findCategoryByName();
}
