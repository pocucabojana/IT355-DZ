<%-- 
    Document   : 403
    Created on : Jun 26, 2017, 11:26:13 AM
    Author     : BojanaPocuca
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RentACar-403</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class = "container">
            <div class="wrapper">
                <c:choose>
                    <c:when test="${empty username}">
                        <h2 class="text-center">Please login <a href="/PharmacyWebShop/login">here</a></h2>
                    </c:when>
                    <c:otherwise>
                        <h2 class="text-center">User ${username} <br/>You are not allowed to see this page!</h2>
                        </c:otherwise>
                    </c:choose>
            </div>
        </div>
    </body>

