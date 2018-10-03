<%-- 
    Document   : PersonDetails
    Created on : 24-Sep-2018, 5:53:09 PM
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
        <form action="InsertPersonDetails" method="post">
            <table align="center" bgcolor="#99FFCC" border="1" width="70%">
                <tr>
                    <td colspan="2" align="center">Person Details </td>
                </tr>
                <tr>
                    <td>Name </td>
                    <td><input type="text" name="name" maxlength="20"></td>
                </tr>
                <tr>
                    <td>City </td>
                    <td><input type="text" name="city" maxlength="20"></td>
                </tr>
                <tr>
                    <td>Postal Code </td>
                    <td><input type="text" name="pc" maxlength="10"></td>
                </tr>

                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit"></td>
                </tr> 
</table>
</form>
    </body>
</html>
