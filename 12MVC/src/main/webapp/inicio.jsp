<%-- 
    Document   : inicio
    Created on : 9/05/2022, 07:59:38 PM
    Author     : Alumno
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.empleados"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Controlador.AccionesEmpleado "%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="consultamepleados">
            <table border="2">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Password</th>
                        <th>Email</th>
                        <th>Pais</th>
                        <th>Editar</th>
                        <th>Borrar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<empleados> lista= AccionesEmpleado.getAllEmpleados();
                        for(empleados e :lista){
                            %>
                            <tr>
                                <td> <%=e.getId()%> </td>
                                <td> <%=e.getNombre()%> </td>
                                <td> <%=e.getPassword()%> </td>
                                <td> <%=e.getEmail()%> </td>
                                <td> <%=e.getPais()%> </td>
                                <td><a href="editar.jsp?id=<%=e.getId()%>">ICONOEditar</a></td>
                                <td><a href="eliminarmepleado?id=<%=e.getId()%>">ICONOEliminar</a></td>
                            </tr>
                        }
                        %>
                </tbody>
            </table>
        </div>
    </body>
</html>
