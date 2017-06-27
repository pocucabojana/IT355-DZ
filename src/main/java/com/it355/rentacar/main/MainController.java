/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.it355.rentacar.main;

import com.it355.rentacar.dao.ShoppingCartDao;
import com.it355.rentacar.entity.Product;
import com.it355.rentacar.entity.Category;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author BojanaPocuca
 */
@Controller
public class MainController {

    @Autowired
    ShoppingCartDao shoppingCartDao;

    @RequestMapping(method = RequestMethod.GET, path = "/")
    public String printHello(ModelMap model) {
        return "index";
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.GET)
    public String addProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("categories", shoppingCartDao.getCategories());
        return "addProduct";
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public ModelAndView addProduct(@ModelAttribute("product") Product p, ModelAndView model) {

        p = shoppingCartDao.addProduct(p);
        model.addObject("categories", shoppingCartDao.getCategories());
        model.addObject("successMsg", "Product successfully added");
        model.addObject("product", p);
        return model;
    }

    @RequestMapping(value = "/addCategory", method = RequestMethod.GET)
    public String addCategory(Model model) {
        model.addAttribute("category", new Category());
        return "addCategory";
    }

    @RequestMapping(value = "/addCategory", method = RequestMethod.POST)
    public ModelAndView addCategory(@ModelAttribute("category") Category p, ModelAndView model) {

        shoppingCartDao.addCategory(p);
        model.addObject("successMsg", "caetgory successfully added");
        return model;
    }

    @RequestMapping(value = "/allProducts", method = RequestMethod.GET)
    public ModelAndView getProducts(ModelAndView model) {
        model.addObject("products", shoppingCartDao.getProducts());
        model.addObject("product", new Product());
        return model;
    }

    @RequestMapping(value = "/editProduct/{id}", method = RequestMethod.GET)
    public String addProduct(@PathVariable("id") int id, Model model) {
        Product produc = shoppingCartDao.getProductByID(id);
        model.addAttribute("product", produc);
        model.addAttribute("categories", shoppingCartDao.getCategories());
        return "addProduct";
    }

    @RequestMapping(value = "/deleteProduct/{id}", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("id") int id, HttpServletRequest request) {
        System.out.println("Fetching & Deleting product with id " + id);
        Product produc = shoppingCartDao.getProductByID(id);
        if (produc == null) {
            System.out.println("Unable to delete. Product with id " + id + " not found");
            String referer = request.getHeader("Referer");
            return "redirect:" + referer;
        }

        shoppingCartDao.deleteProduct(produc);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }

}
