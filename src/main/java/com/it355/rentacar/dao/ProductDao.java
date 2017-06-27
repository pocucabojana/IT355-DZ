/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.it355.rentacar.dao;

import com.it355.rentacar.data.Product;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author BojanaPocuca
 */
public class ProductDao {

    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int save(Product p) {
        String sql = "INSERT INTO product(product_name, product_price, product_description) VALUES ('" + p.getProductName() + "', '" + p.getProductPrice() + "', '" + p.getProductDescription() + "')";
        return template.update(sql);
    }

    public int update(Product p) {
        String sql = "UPDATE product SET product_name='" + p.getProductName() + "', product_price='" + p.getProductPrice() + "', product_description='" + p.getProductDescription() + "' where product_id='" + p.getId() + "'";
        return template.update(sql);
    }

    public int delete(int id) {
        String sql = "DELETE FROM product WHERE product_id=" + id + "";
        return template.update(sql);
    }

    public Product getProductByID(int id) {
        String sql = "SELECT * FROM product WHERE product_id=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Product>(Product.class));
    }

    public List<Product> getProducts() {
        return template.query("SELECT * FROM product", new RowMapper<Product>() {
            public Product mapRow(ResultSet rs, int row) throws SQLException {
                Product e = new Product();
                e.setId(rs.getInt(1));
                e.setProductName(rs.getString(2));
                e.setProductPrice(rs.getDouble(3));
                e.setProductDescription(rs.getString(4));
                return e;
            }
        });
    }
}
