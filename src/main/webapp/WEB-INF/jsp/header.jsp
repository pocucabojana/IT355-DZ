<%-- 
    Document   : header
    Created on : Jun 26, 2017, 9:54:25 AM
    Author     : BojanaPocuca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <spring:url value="/resources/style.css" var="showHomePage" />
        <link href="${showHomePage}" rel="stylesheet" />


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.1.1.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script src="resources/script.js"></script>
        <title>Rent A Car</title>



    </head>

    <nav id="header" class="navbar navbar-fixed-top">
        <div id="header-container" class="container navbar-container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a id="brand" class="navbar-brand" href="#">Rent A Car</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/IT355-DZ">Pocetna strana</a></li>
                    <li><a href="/IT355-DZ/addProduct">Dodaj automobil</a></li>
                    <li><a href="/IT355-DZ/allProducts">Svi automobili</a></li>
                    <li><a href="/IT355-DZ/login">Login/Register</a></li>
                    <li><a href="#about">O nama</a></li>
                    <li><a href="#contact">Kontakt</a></li>
                </ul>
            </div>
        </div>
    </nav>
