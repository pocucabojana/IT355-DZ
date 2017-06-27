<%-- 
    Document   : editProducts
    Created on : Jun 26, 2017, 3:21:43 PM
    Author     : BojanaPocuca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RentACar-Izmeni info o automobilu</title>
    </head>
    <%@include file="header.jsp" %>
    <body>
        <form:form method="POST" action="/RentACar/editsave">
            <div class="text-center">
                <div id="box">
                    <h2>Izmenite informacije o automobilu</h2>
                    <table class="table">    
                        <tr>  
                            <td><form:hidden  path="id" /></td>  
                        </tr>   
                        <tr>    
                            <td><form:label path="productName">Novo ime: </form:label></td>   
                            <td><form:input path="productName"  /></td>  
                        </tr>    
                        <tr>    
                            <td><form:label path="productPrice">Nova cena: </form:label></td>    
                            <td><form:input path="productPrice" /></td>  
                        </tr>   
                        <tr>    
                            <td><form:label path="productDescription">Novi opis: </form:label></td>    
                            <td><form:input path="productDescription" /></td>  
                        </tr>   

                        <tr>    
                            <td colspan="2">
                                <div id="box"> <input type="submit" value="Sacuvaj izmene" class="btn-primary"/></div>
                            </td>    
                        </tr>    
                    </table>
                </div>
            </div>
        </form:form>    
    </body>
