<%-- 
    Document   : allCategories
    Created on : Jun 27, 2017, 3:32:10 AM
    Author     : BojanaPocuca
--%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<h1 class="text-center">Category list</h1>
<c:if test="${!empty categories}">

    <div class="container">

        <table class="table table-striped"> 
            <thead>
                <tr>
                    <th>Ime</th>
                    <th>Izmeni</th>
                    <th>Obrisi</th>
                </tr>
            </thead>
            <tbody> 
                <c:forEach items="${categories}" var="category">

                    <tr>
                        <td>${category.name}</td>
                        <td><a href="<c:url value='/editCategory/${category.id}' />"><span class="glyphicon glyphicon-pencil"></span> IZMENI </a></td>
                        <td><a href="<c:url value='/deleteCategory/${category.id}' />"><span class="glyphicon glyphicon-remove"></span> OBRISI </a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>
</c:if>
