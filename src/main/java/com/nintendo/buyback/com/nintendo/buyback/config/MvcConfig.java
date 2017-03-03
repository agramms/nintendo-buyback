package com.nintendo.buyback.com.nintendo.buyback.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Created by: Alessandro VIeira Grammelsbacher
 * Created date: 02/03/2017 23:41
 * Project Name: nintendo-buyback
 */
@Configuration
public class MvcConfig extends WebMvcConfigurerAdapter{
    @Override
    public void addViewControllers(ViewControllerRegistry registry)
    {
        registry.addViewController("/home").setViewName("home");
        registry.addViewController("/").setViewName("home");
    }
}
