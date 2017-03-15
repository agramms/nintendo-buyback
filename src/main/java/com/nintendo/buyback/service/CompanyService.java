package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Company;

import java.util.List;

public interface CompanyService {
    List<Company> findAllCompanies();
    Company findByCompanyName(String name);
    void saveCompany(Company company);
    List<Company> findByCompanyNameContaining(String name);
    Company findOneCompany(long company_id);
}
