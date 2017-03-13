package com.nintendo.buyback.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value={"/", "/login"})
public class LoginController {

    public static final String LOGIN_VIEW = "login";

    /*Inicializa formulário*/
    @RequestMapping(value={"/", "/"+LOGIN_VIEW}, method = RequestMethod.GET)
    public ModelAndView login(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(LOGIN_VIEW);
        return modelAndView;
    }
}