/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.it355.rentacar.dao;

import com.it355.rentacar.entity.Product;
import com.it355.rentacar.entity.Category;
import java.util.List;

/**
 *
 * @author BojanaPocuca
 */
public interface ShoppingCartDao {

    public List<Category> getCategories();

    public Category getCategoryByID(int id);

    public List<Product> getProductsByCategory(Category category);

    public void editCategory(Category category);

    public Category addCategory(Category category);

    public int getCountProductsInCategory(int categoryId);

    public void deleteCategory(Category category);

    public List<Product> getProducts();

    public Product getProductByID(int productID);

    public void editProduct(Product product);

    public Product addProduct(Product product);

    public void deleteProduct(Product product);

    public int getCountProducts();

}
