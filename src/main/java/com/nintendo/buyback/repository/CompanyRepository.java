package com.nintendo.buyback.repository;

import com.nintendo.buyback.model.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("companyRepository")
public interface CompanyRepository extends JpaRepository<Company, Long> {

}
