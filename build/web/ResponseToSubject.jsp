<%-- 
    Document   : ResponseToSubject
    Created on : 24-Sep-2018, 6:35:38 PM
    Author     : ektasharma
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.labassignment.SubjectDetails"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        SubjectDetails subject=(SubjectDetails)request.getAttribute("sd");
    %>
    <table align="center" bgcolor="#FFFFCC" border="1" width="70%">
        <tr>
            <td colspan="2" align="center"><%="Welcome "+subject.getName()+" !!!!. Your selected subjects are:" %></td>
        </tr>
        <%
            String[] subjectsArray = subject.getSubjects();
            for(String s: subjectsArray){
            
        %>
        <tr>
            <td><%=s %> </td>
            
        </tr>
        <%
            }
        %>
    </table>
    </body>
</html>
