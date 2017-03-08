package com.nintendo.buyback.component;

import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

/**
 * Created by avieira on 07/03/2017.
 */
@Component
public class CompanyComponent implements Converter<String, Company> {

    @Autowired
    private CompanyRepository companyRepository;

    @Override
    public Company convert(String s) {
        return companyRepository.findOne(new Long(s));
    }
}
