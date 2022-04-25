<%-- 
    Document   : de prueba nomas
    Created on : 21/04/2022, 09:33:34 PM
    Author     : HASHUZZ
--%>

<%@page contentType="text/html" language="java" import="java.sql.*, java.util.*, java.text.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" href="css/grid.css">
    </head>
    <body>
        <% 
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String userName, URL, password, driver;
        
        URL="jdbc:mysql://localhost/docente";
        userName="Josh GardVille";
        password="stuartpot";
        driver="com.mysql.cj.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(URL, userName, password);
            try{
                String nombre, appat, apmat, sexo, fecha, user, pass;
                int matricula;
                                
                nombre=request.getParameter("nombre");
                appat=request.getParameter("appat");
                apmat=request.getParameter("apmat");
                sexo=request.getParameter("sexo");
                matricula=Integer.parseInt(request.getParameter("matricula"));
                fecha=request.getParameter("fecha");
                user=request.getParameter("user");
                pass=request.getParameter("pass");

                set=con.createStatement();
                
                String q="insert into mpersona(nombre, appat, apmat, sexo, numero_empleado, fecha_nacimiento)"
                        + "values ('"+nombre+"', '"+appat+"', '"+apmat+"', '"+sexo+"', '"+matricula+"','"+fecha+"')";
                
                int registro=set.executeUpdate(q);
                
                %>
                 <h1>Registro Exitoso</h1>
                <%
            
            }catch(SQLException es){
                System.out.println("Error al registrar en la tabla");
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
        <a href="index.html" >Regresar a la Principal</a>
    </body>
</html>
