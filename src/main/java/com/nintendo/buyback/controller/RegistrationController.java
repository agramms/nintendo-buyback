package com.nintendo.buyback.controller;

import com.nintendo.buyback.model.Company;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.service.CompanyService;
import com.nintendo.buyback.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by avieira on 07/03/2017.
 */
@Controller
@RequestMapping(value="/registration")
public class RegistrationController {

    public static final String ROOT_REGISTRATION = "registration";

    @Autowired
    private UserService userService;

    @Autowired
    private CompanyService companyService;

    /*Inicializa formulário*/
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView registration(){
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        modelAndView.addObject("user", user);
        modelAndView.setViewName(ROOT_REGISTRATION);

        List<Company> companies = companyService.findAllCompanies();
        modelAndView.addObject("companies", companies);

        return modelAndView;
    }

    /*Posta na página de registro de usuário*/
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView createNewUser(@Valid User user, BindingResult bindingResult) {
        ModelAndView modelAndView = new ModelAndView();
        User userExists = userService.findUserByEmail(user.getEmail());
        if (userExists != null) {
            bindingResult
                    .rejectValue("email", "error.user",
                            "Já existe um usuário cadastrado para esse email");
        }
        if(user.getCompany() != null)
        {
            int licences = user.getCompany().getQtdLicenses();
            int inUse = user.getCompany().getUsers().size();

            if(inUse >= licences)
                bindingResult
                        .rejectValue("company", "error.user",
                                "Empresa já possui a quantidade máxima de usuários");

        }
        if (bindingResult.hasErrors()) {
            List<Company> companies = companyService.findAllCompanies();
            modelAndView.addObject("companies", companies);

            modelAndView.setViewName(ROOT_REGISTRATION);
        } else {
            userService.saveUser(user);
            modelAndView.addObject("successMessage", "Usuário registrado com sucesso");
            modelAndView.addObject("returnAdd", true);
            modelAndView.addObject("user", new User());
            modelAndView.setViewName(LoginController.LOGIN_VIEW);

        }
        return modelAndView;
    }
}
