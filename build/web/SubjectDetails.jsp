<%-- 
    Document   : SubjectDetails
    Created on : 24-Sep-2018, 6:32:00 PM
    Author     : ektasharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="InsertSubjectDetails" method="post">
            <table align="center" bgcolor="#99FFCC" border="1" width="70%">
                <tr>
                    <td colspan="2" align="center">Details </td>
                </tr>
                <tr>
                    <td>Name </td>
                    <td><input type="text" name="name" maxlength="20"></td>
                </tr>
                <tr>
                    <td>Subjects </td>
                    <td><input type = "checkbox" name = "subjects" value = "Maths" /> Maths </td>
                    <td><input type = "checkbox" name = "subjects" value = "Advanced Java" /> Advanced Java </td>
                    <td> <input type = "checkbox" name = "subjects" value = "Advanced XML" checked = "checked" /> Advanced XML </td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit"></td>
                </tr> 
</table>
</form>
    </body>
</html>
