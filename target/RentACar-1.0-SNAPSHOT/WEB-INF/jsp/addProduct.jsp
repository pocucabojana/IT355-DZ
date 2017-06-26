<%-- 
    Document   : addProduct
    Created on : Jun 26, 2017, 9:55:25 AM
    Author     : BojanaPocuca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rent A Car-Add Product</title>
    </head>
    <body>
        <%@include file="header.jsp" %>


        <form:form method="POST" action="/IT355-DZ/productAdded" commandName="addProduct">
            <div class="text-center">
                <div id="box">
                    <h2>Unesite informacije o automobilu</h2>
                    <table class="table">
                        <tr>
                            <td><form:label path="productName">Unesite ime automobila: </form:label></td>
                            <td><form:input path="productName" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="productPrice">Unesite cenu automobila: </form:label></td>
                            <td><form:input path="productPrice" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="productDescription">Unesite opis automobila: </form:label></td>
                            <td><form:input path="productDescription" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div id="box"> <input type="submit" value="Add Product" class="btn-primary"/></div>
                            </td>
                        </tr>
                    </table>


                </div>
            </div>    
        </form:form>
