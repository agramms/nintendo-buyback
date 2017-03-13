package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Category;
import com.nintendo.buyback.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 12/03/2017 08:55
 * Project Name: nintendo-buyback
 */
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Category> findTopCategoriesInStock() {
        return categoryRepository.findTopCategoriesInStock();
    }

    @Override
    public Category findCategoryByName() {
        return null;
    }
}
