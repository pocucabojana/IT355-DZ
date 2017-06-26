/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.it355.rentacar;

import com.it355.rentacar.data.Product;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author BojanaPocuca
 */
@Controller
public class MainController {

    @RequestMapping(method = RequestMethod.GET, path = "/")
    public String printHello(ModelMap model) {
        return "index";
    }

    @RequestMapping(method = RequestMethod.GET, path = "/addProduct")
    public String addProduct(ModelMap model) {
        model.addAttribute("addProduct", new Product());
        return "addProduct";
    }

    @RequestMapping(value = "/productAdded", method
            = RequestMethod.POST)
    public String productAdded(@ModelAttribute Product product,
            ModelMap model) {
        model.addAttribute("productName", product.getProductName());
        model.addAttribute("productPrice", product.getProductPrice());
        model.addAttribute("productDescription", product.getProductDescription());
        return "productAdded";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error",
            required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid credentials!");
        }
        if (logout != null) {
            model.addObject("msg", "You are logged out!");
        }
        model.setViewName("login");
        return model;
    }

    @RequestMapping(value = "/hello", method
            = RequestMethod.GET)
    public ModelAndView helloPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("message", "Ovo je strana za korisnike!");
        model.setViewName("hello");
        return model;
    }

    @RequestMapping(value = "/admin**", method
            = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("message", "Ovo je strana za admine!");
        model.setViewName("admin");
        return model;
    }

    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied() {
        ModelAndView model = new ModelAndView();
        Authentication auth
                = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            System.out.println(userDetail);
            model.addObject("username",
                    userDetail.getUsername());
        }
        model.setViewName("403");
        return model;
    }

}
