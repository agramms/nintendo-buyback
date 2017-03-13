package com.nintendo.buyback.repository;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("companyRepository")
public interface CompanyRepository extends JpaRepository<Company, Long> {
    Company findByName(String name);
    List<Company> findByNameContaining(String name);
}
