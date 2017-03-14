package com.nintendo.buyback.controller;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 11/03/2017 13:21
 * Project Name: nintendo-buyback
 */
@Controller
@RequestMapping("admin/company")
public class CompanyController {
    /**
     * String para Request Mapping de criação
     */
    public static final String COMPANY_REGISTRATION_MAPPING = "registration";
    /**
     * String para Request Mapping de lista
     */
    public static final String COMPANY_LIST_MAPPING = "list";
    /**
     * String com caminho basico para a view
     */
    public static final String COMPANY_VIEW_NAME = "admin/company";
    /**
     * Nome da view completa para chamada de ação de registro
     */
    public static final String COMPANY_REGISTRATION_VIEW_NAME = COMPANY_VIEW_NAME + "/" + COMPANY_REGISTRATION_MAPPING;
    /**
     * Nome da View completa para chamada da ação de lista
     */
    public static final String COMPANY_LIST_VIEW_NAME = COMPANY_VIEW_NAME + "/" + COMPANY_LIST_MAPPING;

    @Autowired
    CompanyService companyService;

    @RequestMapping(value = COMPANY_REGISTRATION_MAPPING, method = RequestMethod.GET)
    public ModelAndView companyRegistration()
    {
        ModelAndView modelAndView = new ModelAndView();
        Company company = new Company();
        company.setBudget(1000);
        company.setActive(Status.ACTIVE);
        modelAndView.addObject("company", company);

        modelAndView.setViewName(COMPANY_REGISTRATION_VIEW_NAME);
        return modelAndView;
    }

    @RequestMapping(value = COMPANY_REGISTRATION_MAPPING, method = RequestMethod.POST)
    public ModelAndView companyRegistration(@RequestParam(value = "companyFilter", required = false) String companyFilter, @Valid Company company, BindingResult bindingResult)
    {
        ModelAndView modelAndView = new ModelAndView();

        Company companyExists = companyService.findByCompanyName(company.getName());
        if (companyExists != null) {
            bindingResult
                    .rejectValue("name", "error.company",
                            "Já existe uma empresa cadastrada com esse nome");
        }
        if (bindingResult.hasErrors()) {
            modelAndView.setViewName(COMPANY_REGISTRATION_VIEW_NAME);
        } else {
            companyService.saveCompany(company);
            modelAndView.addObject("successMessage", "Empresa cadastrada com sucesso");

            modelAndView = listCompany(modelAndView, companyFilter);

        }
        return modelAndView;
    }

    @RequestMapping(value = COMPANY_LIST_MAPPING, method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView listCompanyView(@RequestParam(value = "companyFilter", required = false) String companyFilter, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = listCompany(new ModelAndView(), companyFilter);

        return modelAndView;
    }


    private ModelAndView listCompany(ModelAndView modelAndView, String companyFilter)
    {
        List<Company> companies = companyService.findByCompanyNameContaining(companyFilter);

        modelAndView.addObject("qtdCompany", (companies != null ? companies.size() : 0));
        modelAndView.addObject("companies", companies);
        modelAndView.setViewName(COMPANY_LIST_VIEW_NAME);


        return modelAndView;
    }

}
