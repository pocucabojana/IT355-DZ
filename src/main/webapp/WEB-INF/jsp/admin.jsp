<%-- 
    Document   : admin
    Created on : Jun 26, 2017, 11:27:01 AM
    Author     : BojanaPocuca
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RentACar-Admin</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class = "container">
            <div class="wrapper text-center">
                <h1>Zdravo, admine!</h1>
                <h1> ${message}</h1>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <c:url value="/j_spring_security_logout" 
                           var="logoutUrl" />
                    <form action="${logoutUrl}" method="POST"
                          id="logoutForm">
                        <input type="hidden" name="${_csrf.parameterName}"
                               value="${_csrf.token}" />
                    </form>
                    <script>
                        function formSubmit() {
                            document.getElementById("logoutForm").submit();
                        }
                    </script>
                    <c:if test="${pageContext.request.userPrincipal.name !=
                                  null}">
                          <h2>
                              Username je :
                              ${pageContext.request.userPrincipal.name} | <a
                                  href="javascript:formSubmit()"> Logout</a>
                          </h2>
                    </c:if>
            </div>
        </div>
    </body>

