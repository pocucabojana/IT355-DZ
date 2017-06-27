<%-- 
    Document   : allProducts
    Created on : Jun 26, 2017, 3:20:10 PM
    Author     : BojanaPocuca
--%>

<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<h1 class="text-center">Product list</h1>
<c:if test="${!empty products}">

    <div class="container">

        <table class="table table-striped"> 
            <thead>
                <tr>
                    <th>Ime</th>
                    <th>Opis</th>
                    <th>Cena</th>
                    <th>Kategorija</th>
                    <th>Izmeni</th>
                    <th>Obrisi</th>
                </tr>
            </thead>
            <tbody> 
                <c:forEach items="${products}" var="product">

                    <tr>
                        <td>${product.name}</td>
                        <td>${product.description}</td>
                        <td>${product.price}</td>
                        <td>${product.category}</td>
                        <td><a href="<c:url value='/editProduct/${product.id}' />"><span class="glyphicon glyphicon-pencil"></span> IZMENI </a></td>
                        <td><a href="<c:url value='/deleteProduct/${product.id}' />"><span class="glyphicon glyphicon-remove"></span> OBRISI </a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>
</c:if>