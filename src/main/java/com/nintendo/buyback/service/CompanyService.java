package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Company;

import java.util.List;

/**
 * Created by avieira on 06/03/2017.
 */
public interface CompanyService {
    List<Company> findAllCompanies();
}
