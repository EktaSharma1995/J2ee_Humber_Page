<%-- 
    Document   : ResponseToPerson
    Created on : 24-Sep-2018, 5:56:49 PM
    Author     : ektasharma
--%>

<%@page import="com.labassignment.PersonDetails"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <%
        PersonDetails personDetails=(PersonDetails)request.getAttribute("pd");
    %>
    <table align="center" bgcolor="#FFFFCC" border="1" width="70%">
        <tr>
            <td colspan="2" align="center"><%="Welcome "+personDetails.getName()+" !!!!. Your details Processed." %></td>
        </tr>
        <tr>
            <td>City </td>
            <td><%=personDetails.getCity() %></td>
        </tr>
        <tr>
            <td>Postal Code </td>
            <td><%=personDetails.getPostalCode() %></td>
        </tr> 
    </table>
    </body>
</html>
