/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.it355.rentacar;

import com.it355.rentacar.dao.ProductDao;
import com.it355.rentacar.data.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

    @Autowired
    ProductDao dao;

    @RequestMapping(method = RequestMethod.GET, path = "/")
    public String printHello(ModelMap model) {
        return "index";
    }

    @RequestMapping(method = RequestMethod.GET, path = "/addProduct")
    public ModelAndView addProduct() {
        return new ModelAndView("addProduct", "command", new Product());
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("product") Product product) {
        dao.save(product);
        return new ModelAndView("redirect:/allProducts");
    }

    @RequestMapping(value = "/allProducts", method = RequestMethod.GET)
    public ModelAndView allProducts() {
        List<Product> list = dao.getProducts();
        return new ModelAndView("allProducts", "list", list);
    }

    @RequestMapping(value = "/editProducts/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable int id) {
        Product product = dao.getProductByID(id);
        return new ModelAndView("editProducts", "command", product);
    }

    @RequestMapping(value = "/editsave", method = RequestMethod.POST)
    public ModelAndView editsave(@ModelAttribute("product") Product product) {
        dao.update(product);
        return new ModelAndView("redirect:/allProducts");
    }

    @RequestMapping(value = "/deleteProduct/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable int id) {
        dao.delete(id);
        return new ModelAndView("redirect:/allProducts");
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(
            @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid credentials!");
        }
        if (logout != null) {
            model.addObject("message", "You are logged out!");
        }
        model.setViewName("login");
        return model;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registration(Model model) {

        return "register";
    }

    @RequestMapping(value = "/welcome", method
            = RequestMethod.GET)
    public ModelAndView welcomePage() {
        ModelAndView model = new ModelAndView();

        model.setViewName("welcome");
        return model;
    }

}
