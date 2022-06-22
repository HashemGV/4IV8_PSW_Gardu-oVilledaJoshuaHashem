<%-- 
    Document   : editarempleado
    Created on : 9/05/2022, 08:22:12 PM
    Author     : Alumno
--%>

<%@page import="modelo.empleados"%>
<%@page import="Controlador.AccionesEmpleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="editarempleado">
            <form name="editar" method="post" action="actualizarempleado">
                <table border="2">
                    <%
                        //id
                        int id=Integer.parseInt(request.getParameter("id"));
                        //empleado
                        empleados e=AccionesEmpleado.buscarEmpleadosID(id);
                        %>
                    <tr>
                        <td>ID</td>
                        <td><input type="hidden" 
                                   value="<%=e.getId()%>"></td>
                        <td>Nombre</td>
                        <td><input type="hidden" 
                                   value="<%=e.getNombre()%>"></td>
                        <td>Password</td>
                        <td><input type="hidden" 
                                   value="<%=e.getPassword()%>"></td>
                        <td>Email</td>
                        <td><input type="hidden" 
                                   value="<%=e.getEmail()%>"></td>
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
                        <td colspan="2"><input type="submit"
                                               value="Actualizar Empleado"></td>
                    </tr>
                </table>
            </form>
            <form>
                <table border="2">
                    <%
                        //id
                        int id=Integer.parseInt(request.getParameter("id"));
                        //empleado
                        empleados e=AccionesEmpleado.buscarEmpleadosID(id);
                        %>
                    <tr>
                        <td>ID</td>
                        <td><input type="hidden" 
                                   value="<%=e.getId()%>"></td>
                        <td>Nombre</td>
                        <td><input type="hidden" 
                                   value="<%=e.getNombre()%>"></td>
                        <td>Password</td>
                        <td><input type="hidden" 
                                   value="<%=e.getPassword()%>"></td>
                        <td>Email</td>
                        <td><input type="hidden" 
                                   value="<%=e.getEmail()%>"></td>
                        <td>Pais:</td>
                            <td><select name="pais2">
                                    <option>México</option>
                                    <option>India</option>
                                    <option>Por ahi</option>
                                    <option>El q nadie quiere</option>
                                    <option>Dema :0</option>
                                </select></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit"
                                               value="Actualizar Empleado"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
