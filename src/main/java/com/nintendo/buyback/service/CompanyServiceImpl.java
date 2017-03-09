package com.nintendo.buyback.service;

import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.repository.CompanyRepository;
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
}
