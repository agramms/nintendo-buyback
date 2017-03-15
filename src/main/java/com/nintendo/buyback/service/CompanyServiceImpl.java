package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.repository.CompanyRepository;
import com.nintendo.buyback.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyRepository companyRepository;

    @Override
    public List<Company> findAllCompanies() {
        return companyRepository.findAll();
    }

    @Override
    public Company findByCompanyName(String name) {
        return companyRepository.findByName(name);
    }

    @Override
    public void saveCompany(Company company) {
        if(company.getActive() == null || company.getActive().toString().isEmpty())
            company.setActive(Status.ACTIVE);

        companyRepository.save(company);
    }

    @Override
    public List<Company> findByCompanyNameContaining(String name) {
        if(!StringUtils.isNullOrEmpty(name))
            return companyRepository.findByNameContaining(name);
        return companyRepository.findAll();
    }

    @Override
    public Company findOneCompany(long company_id) {
        return companyRepository.findOne(company_id);
    }

}
