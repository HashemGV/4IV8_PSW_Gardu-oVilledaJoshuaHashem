<%-- 
    Document   : editar
    Created on : 25/04/2022, 08:09:08 AM
    Author     : HASHUZZ
--%>

<%@page contentType="text/html" language="java" import="java.sql.*, java.util.*, java.text.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body>
        <form name="editar" method="post" >       
        <% 
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String userName, URL, password, driver;
        
        URL="jdbc:mysql://localhost/docente";
        userName="Josh GardVille";
        password="stuartpot";
        driver="com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con=DriverManager.getConnection(URL, userName, password);
            try{
                int id = Integer.parseInt(request.getParameter("id"));
                String q = "select * from mpersona where numero_empleado ="+id;
                
                set=con.createStatement();
                
                rs=set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                
                <label>Boleta</label>
                <br>
                <input type="hidden" name="numempleado" value="<%=rs.getInt("numempleado")%>" >
                <br>
                <label>Nombre</label>
                <br>
                <input type="text" name="nombre" value="<%=rs.getString("nombre")%>" >
                <br>
                <label>Apellido Paterno</label>
                <br>
                <input type="text" name="appat" value="<%=rs.getString("appat")%>" >
                <br>
                <label>Apellido Materno</label>
                <br>
                <input type="text" name="apmat" value="<%=rs.getString("apmat")%>" >
                <br>
                <label>Sexo</label>
                <br>
                <input type="text" name="sexo" value="<%=rs.getString("sexo")%>" >
                <br>
                <label>Fecha Nacimiento</label>
                <br>
                <input type="text" name="fechanac" value="<%=rs.getString("fecha_nacimiento")%>" >
                <br>
                <input type="submit" value="Actualizar Datos" >
                <br>
                <input type="reset" value="Borrar Datos" >
                
                <%
                    }
            }catch(SQLException es){
                System.out.println("Error al actualizar la tabla");
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
        </form>
        <br>
        <a href="index.html">Regresar a la Principal</a>
        <br>
    </body>
</html>
