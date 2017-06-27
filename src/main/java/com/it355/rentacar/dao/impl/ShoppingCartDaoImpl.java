/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.it355.rentacar.dao.impl;

import com.it355.rentacar.dao.ShoppingCartDao;
import com.it355.rentacar.entity.Category;
import com.it355.rentacar.entity.Product;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author BojanaPocuca
 */
@Repository("ShoppingCartDao")
@Service
public class ShoppingCartDaoImpl implements ShoppingCartDao {

    @SuppressWarnings("unused")
    private final Log logger = LogFactory.getLog(getClass());

    //Instanciramo sesiju
    @Autowired
    private SessionFactory sessionFactory;

    //kreiramo seter za sesiju
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    //kreiramo geter za sesiju
    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<Product> getProducts() {
        List<Product> results = (List<Product>) getSession().createCriteria(Product.class).list();
        return results;
    }

    @Override
    @Transactional
    public Product getProductByID(int id) {
        Product product = (Product) getSession().createCriteria(Product.class).add(Restrictions.eq("id", id)).uniqueResult();
        return product;

    }

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<Category> getCategories() {
        List<Category> results = (List<Category>) getSession().createCriteria(Category.class).list();
        return results;
    }

    @Override
    @Transactional
    public Category getCategoryByID(int id) {
        Category category = (Category) getSession().createCriteria(Category.class).add(Restrictions.eq("id", id)).uniqueResult();
        return category;
    }

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<Product> getProductsByCategory(Category category) {
        return (List<Product>) getSession().createCriteria(Product.class).add(Restrictions.eq("category", category)).list();
    }

    @Override
    @Transactional
    public void editCategory(Category category) {
        getSession().saveOrUpdate(category);

    }

    @Override
    @Transactional
    public void editProduct(Product product) {
        getSession().saveOrUpdate(product);

    }

    @Override
    @Transactional
    public Category addCategory(Category category) {
        return (Category) getSession().merge(category);
    }

    @Override
    @Transactional
    public Product addProduct(Product product) {
        return (Product) getSession().merge(product);
    }

    @Override
    @Transactional
    public int getCountProducts() {
        Number result = (Number) getSession().createSQLQuery("select count(*) from product").uniqueResult();
        return Integer.parseInt(result.toString());
    }

    @Override
    @Transactional
    public int getCountProductsInCategory(int categoryId) {

        String hql = "select count(*) from product where category_id = :id";
        Number result = (Number) getSession().createSQLQuery(hql).setInteger("id", categoryId).uniqueResult();
        return Integer.parseInt(result.toString());
    }

    @Transactional
    @Override
    public void deleteProduct(Product product) {
        getSession().delete(product);
    }

    @Transactional
    @Override
    public void deleteCategory(Category category) {
        getSession().delete(category);
    }
}
