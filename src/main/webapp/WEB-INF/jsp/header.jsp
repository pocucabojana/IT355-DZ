<%-- 
    Document   : header
    Created on : Jun 26, 2017, 9:54:25 AM
    Author     : BojanaPocuca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String uri = request.getRequestURI();
    String pageName = uri.substring(uri.lastIndexOf("/") + 1);
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <spring:url value="/resources/style.css" var="showHomePage" />
    <link href="${showHomePage}" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.1.1.js" integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css"/>

    <spring:url value="/resources/script.js" var="homePageScript" />
    <script src="${homePageScript}"></script>

    <script>
        $(document).ready(function () {
            $("table").DataTable();
        });
    </script>
    <title>Rent A Car</title>

</head>

<nav id="header" class="navbar navbar-fixed-top">
    <div id="header-container" class="container navbar-container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a id="brand" class="navbar-brand" href="#">Rent A Car</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <c:url var="index"  value="/" />
                <c:url var="addpro"  value="/addProduct/" />
                <c:url var="allpro"  value="/allProducts/" />
                <c:url var="addcat"  value="/addCategory/" />
                <c:url var="allcat"  value="/allCategories/" />
                <li class="<%=  (pageName.equals("index.jsp")) ? "active" : ""%>"><a href="${index}">Indeks</a></li>
                <li class="<%= (pageName.equals("addProduct.jsp")) ? "active" : ""%>"><a href="${addpro}">Dodaj automobil</a></li>
                <li class="<%=  (pageName.equals("allProducts.jsp")) ? "active" : ""%>"><a href="${allpro}">Lista automobila</a></li>
                <li class="<%=   (pageName.equals("addCategory.jsp")) ? "active" : ""%>"><a href="${addcat}">Dodaj kategoriju</a></li>
                <li class="<%=   (pageName.equals("allCategories.jsp")) ? "active" : ""%>"><a href="${allcat}">Lista kategorija</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>
