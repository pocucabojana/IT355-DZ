/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.it355.rentacar;

import com.it355.rentacar.data.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
