<%-- 
    Document   : monitor
    Created on : 25/04/2022, 09:59:24 AM
    Author     : HASHUZZ
--%>

<%@page contentType="text/html" language="java" import="java.sql.*, java.util.*, java.text.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monitor</title>
    </head>
    <body>
        <% 
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String userName, URL, password, driver;
        
        URL = "jdbc:mysql://localhost/docente";
        userName = "Jos GardVille";
        password = "stuarpot";
        driver = "com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(URL, userName, password);
            
            try{
                String id, descrip;
                
                id = request.getParameter("numero");
                descrip = request.getParameter("descripcion");
                
                set = con.createStatement();
                
                String q = "insert into mmonitor"
                        + "values ("+id+", '"+descrip+"')";
                
                int registro = set.executeUpdate(q);
                
                %>
                 <h1>Sale, ya quedo ^3^</h1>
                <%
            
            }catch(SQLException es){
                System.out.println("Error al registrar");
                System.out.println(es.getMessage());
                %>
                 <h1>Error en el registro de la tabla</h1>
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
        <br>
        <a href="index.html">Regresar a Principal</a>
    </body>
</html>
