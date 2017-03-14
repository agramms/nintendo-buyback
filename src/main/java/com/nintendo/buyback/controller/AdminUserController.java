package com.nintendo.buyback.controller;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by avieira on 14/03/2017.
 */
@Controller
@RequestMapping("/admin/user")
public class AdminUserController {

    /**
     * String para Mapping list
     */
    public static final String DEFAULT_MAPPING = "/admin/user";
    public static final String USER_LIST_MAPPING = DEFAULT_MAPPING+"/list";


    @Autowired
    private UserService userService;


    @RequestMapping(value="list", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView listUser(@RequestParam(value = "userFilter", required = false) String filter, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = listUser(new ModelAndView(), filter);

        return modelAndView;
    }


    @RequestMapping(value="action", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView engageCompany(@RequestParam(value = "userFilter", required = false) String filter, @RequestParam(value = "userId") long userId, @RequestParam(value = "status") Status newStatus, @ModelAttribute(LoadGlobalData.USER_DATA) User user, HttpServletRequest request, HttpServletResponse response) {
        userService.changeStatus(userId, newStatus);

        ModelAndView modelAndView = listUser(new ModelAndView(), filter);

        return modelAndView;
    }

    private ModelAndView listUser(ModelAndView modelAndView, String filter)
    {
        if(modelAndView == null)
            modelAndView = new ModelAndView();

        List<User> users = userService.findUserByName(filter);

        modelAndView.addObject("qtdUsers", (users != null ? users.size() : 0));
        modelAndView.addObject("users", users);

        modelAndView.setViewName(USER_LIST_MAPPING);
        return modelAndView;
    }

}
