<%-- 
    Document   : registro
    Created on : 3/05/2022, 05:07:08 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Binvenido a nuestra empresa de empresaurios</h1>
        <br>
        <form method="post" name="registro" action="guardarEmpleado">
            <table border="2">
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="passwordtxt"></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" name="emailtxt"></td>
                </tr>
                <tr>
                    <td>Pais:</td>
                            <td><select name="pais">
                                    <option>México</option>
                                    <option>India</option>
                                    <option>Por ahi</option>
                                    <option>El q nadie quiere</option>
                                    <option>Dema :0</option>
                                </select></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value=""Registrar Nuevo Empleado></td>
                </tr>
            </table>
        </form>
        <div>
            <a href="ConsultaEmpleados.jsp">Consultar lista de empleados</a>
            <br>
            <a href="index.html">Regresar al principal</a>
        </div>
    </body>
</html>
