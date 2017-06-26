/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.it355.rentacar;

import java.util.logging.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

/**
 *
 * @author BojanaPocuca
 */
@Aspect
public class Log {

    private final Logger log = Logger.getLogger("");

    @Before("execution(* com.it355.rentacar.MainController.*(..))")
    public void logBefore(JoinPoint point) {
        log.info(point.getSignature().getName() + "page tek treba da se pokrene");
        //log.info(point.getSignature().getName() + "page tek treba da se pokrene");
    }

    @After("execution(* com.it355.rentacar.MainController.*(..))")
    public void logAfter(JoinPoint point) {
        log.info(point.getSignature().getName() + "page se zavrsio sa pokretanjem");
    }

}
