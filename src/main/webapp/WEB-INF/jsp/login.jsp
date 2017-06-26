<%-- 
    Document   : login
    Created on : Jun 26, 2017, 11:28:50 AM
    Author     : BojanaPocuca
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <form action="<c:url value='/j_spring_security_check'/>" method="POST" name="loginForm" class="form-signin">       
                    <h3 class="form-signin-heading">Dobrodosli nazad! Molimo Vas da se prijavite.</h3>
                    <c:if test="${not empty error}">
                        <div class="error">${error}</div>
                    </c:if>
                    <c:if test="${not empty msg}">
                        <div class="msg">${msg}</div>
                    </c:if><br>

                    <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
                    <input type="password" class="form-control" name="password" placeholder="Password" required=""/>     		  

                    <button class="btn btn-lg btn-primary btn-block"  name="submit" value="Login" type="submit">Login</button>

                    <input type="hidden" name="${_csrf.parameterName}"
                           value="${_csrf.token}" />
                </form>			
            </div>
        </div>
    </body>



