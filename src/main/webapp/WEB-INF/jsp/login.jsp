<%-- 
    Document   : login
    Created on : Jun 26, 2017, 11:28:50 AM
    Author     : BojanaPocuca
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RentACar-Login</title>
    </head>
    <body onload="document.loginForm.username.focus();">
        <%@include file="header.jsp" %>

        <div class = "container">
            <div class="wrapper">
                <form method="POST" action="<c:url value='/j_spring_security_check'/>" class="form-signin">
                    <h2 class="form-heading">Log in</h2>

                    <div class="form-group ${error != null ? 'has-error' : ''}">
                        <span>${message}</span>
                        <div class="form-group">
                            <input name="username" type="text" class="form-control" placeholder="Username" autofocus=""/>
                        </div>
                        <div class="form-group">
                            <input name="password" type="password" class="form-control" placeholder="Password"/>
                        </div>
                        <span>${error}</span>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                        <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
                        <h4 class="text-center"><a href="/PetShop/register">Registruj se</a></h4>

                    </div>

                </form>		
            </div>
        </div>
    </body>