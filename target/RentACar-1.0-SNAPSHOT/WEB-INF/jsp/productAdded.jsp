<%-- 
    Document   : productAdded
    Created on : Jun 26, 2017, 9:56:30 AM
    Author     : BojanaPocuca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Automobili</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id="box">
            <h2>Podaci o automobilu</h2>
            <table class="table">
                <tr>
                    <td>Ime automobila: </td>
                    <td>${productName}</td>
                </tr>
                <tr>
                    <td>Cena automobila: </td>
                    <td>${productPrice}</td>
                </tr>
                <tr>
                    <td>Opis automobila: </td>
                    <td>${productDescription}</td>
                </tr>
            </table>
        </div>

