<%-- 
    Document   : consultar
    Created on : 25/04/2022, 08:26:45 AM
    Author     : HASHUZZ
--%>

<%@page contentType="text/html" language="java" import="java.sql.*, java.util.*, java.text.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar</title>
    </head>
    <body>
        <table class="tablita">
            <thead>
                <tr>
                    <th>Número de empleado</th>
                    <th>Nombre</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Sexo</th>
                    <th>Fecha de nacimiento</th>
                    <th>Editar</th>
                </tr>
            </thead>
            <tbody>       
        <% 
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String userName, URL, password, driver;
        
        URL="jdbc:mysql://localhost/docente";
        userName="Josh";
        password="stuartpot";
        driver="com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con=DriverManager.getConnection(URL, userName, password);
            try{
                String q = "select * from mpersona";
                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <tr>
                    <td><%=rs.getInt("numero_empleado")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("appat")%></td>
                    <td><%=rs.getString("apmat")%></td>
                    <td><%=rs.getString("sexo")%></td>
                    <td><%=rs.getString("fecha_nacimiento")%></td>
                    <td><a href="editarperfil.jsp?id=<%=rs.getInt("numero_empleado")%>">Editar</a></td>
                </tr>
                <%
                    }
            }catch(SQLException es){
                System.out.println("Error al registrar");
                System.out.println(es.getMessage());
                %>
                 <h1>Error al consultar la tabla</h1>
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
        <a href="registrardatos.html">Registrar</a>     
    </body>
</html>
