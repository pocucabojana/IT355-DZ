<%-- 
    Document   : allProducts
    Created on : Jun 26, 2017, 3:20:10 PM
    Author     : BojanaPocuca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RentACar-Svi automobili</title>
    </head>
    <%@include file="header.jsp" %>
    <body>
        <div class="text-center">
            <div id="box">
                <table class="table">

                    <tr><th>Id</th><th>Ime: </th><th>Cena: </th><th>Opis: </th><th>IZMENI</th><th>OBRISI</th>  
                            <c:forEach var="product" items="${list}">   
                        <tr>  
                            <td>${product.id}</td>  
                            <td>${product.productName}</td>  
                            <td>${product.productPrice}</td>  
                            <td>${product.productDescription}</td>  
                            <td><a href="editProducts/${product.id}">IZMENI</a></td>  
                            <td><a href="deleteProduct/${product.id}">OBRISI</a></td>  
                        </tr>  
                    </c:forEach>  
                </table>  
                <br/>  
                <a href="/IT355-DZ/addProduct">Dodaj novi automobil</a> 
            </div>
        </div>

    </body>
