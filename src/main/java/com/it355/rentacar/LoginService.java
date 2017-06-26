/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.it355.rentacar;

/**
 *
 * @author BojanaPocuca
 */
public class LoginService {

    public String validateUser(LoginBean loginBean) {
        String username = loginBean.getUsername();
        String password = loginBean.getPassword();
        if (username.equals("user") && password.equals("user")) {
            return "true";
        } else {
            return "false";
        }
    }

}
