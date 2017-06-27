<%-- 
    Document   : newjspwelcome
    Created on : Jun 26, 2017, 3:25:11 PM
    Author     : BojanaPocuca
--%>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RentACar-Dobrodosli!</title>
    </head>
    <%@include file="header.jsp" %>
    <body>
        <div class = "container">
            <div class="wrapper text-center">
                <h1>Zdravo admine! Uspesno ste pristupili nasoj online renti automobila!</h1>
                <h1> ${message}</h1>
                <sec:authorize access="hasRole('ROLE_USER')">
                    <c:url value="/j_spring_security_logout"
                           var="logoutUrl" />
                    <form action="${logoutUrl}" method="post"
                          id="logoutForm">
                        <input type="hidden"
                               name="${_csrf.parameterName}"
                               value="${_csrf.token}" />
                    </form>
                    <script>
                        function formSubmit() {
                            document.getElementById("logoutForm").submit();
                        }
                    </script>
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <h2>
                            Vase korisnicko ime je :
                            ${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()">Logout</a>
                        </h2>
                    </c:if>
                </sec:authorize>
            </div>
        </div>

    </body>
