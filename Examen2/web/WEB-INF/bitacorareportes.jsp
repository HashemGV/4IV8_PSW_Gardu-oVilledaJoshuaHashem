<%-- 
    Document   : bitacorareportes
    Created on : 25/04/2022, 09:52:12 AM
    Author     : HASHUZZ
--%>

<%@page contentType="text/html" language="java" import="java.sql.*, java.util.*, java.text.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bitacora Reportes</title>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Número</th>
                    <th>Problema</th>
                    <th>Número</th>
                    <th>Problema</th>
                    <th>Número</th>
                    <th>Problema</th>
                    <th>Número</th>
                    <th>Problema</th>
                </tr>
            </thead>
            <tbody>
        <% 
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String userName, URL, password, driver;
        
        URL = "jdbc:mysql://localhost/docente";
        userName = "Josh GardVille";
        password = "stuartpot";
        driver = "com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(URL, userName, password);
            try{
                String q = "select * from mcpu, maccesorios, mconfiguracion";
                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <tr>
                    <td><%=rs.getString("id_cpu")%></td>
                    <td><%=rs.getString("descripcion")%></td>
                    <td><%=rs.getString("id_accesorios")%></td>
                    <td><%=rs.getString("descripcion")%></td>
                    <td><%=rs.getString("id_configuracion")%></td>
                    <td><%=rs.getString("descripcion")%></td>
                </tr>
                <%
                    }
            }catch(SQLException es){
                System.out.println("Error al registrar");
                System.out.println(es.getMessage());
                %>
                 <h1>Error al consultar la tabla de la tabla</h1>
                <%
            }
        }catch(Exception e){
        System.out.println("Error al conectar con la BD");
        System.out.println(e.getMessage());
        %>
        <h1>No se conectó, solo jugo con tigo pk eres un juguete diria el budy :,v</h1>
        <%
        }
        %>
        </tbody>
        </table>
        <br>
        <a href="index.html">Regresar a Principal</a>
        <br>
        <a href="registroalumno.jsp">Registrar Nuevo Alumno</a>     
    </body>
</html>
