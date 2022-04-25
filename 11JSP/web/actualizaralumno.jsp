<%-- 
    Document   : actualizaralumno
    Created on : 5/04/2022, 05:41:17 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" language="java"
        import="java.sql.*, java.util.*, java.text.*" 
        pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //aqui ya puedo incorporar java
            Connection con = null;
            Statement set = null;
            ResultSet rs = null;
            
            String username, url, password, driver;
            
            url = "jdbc:mysql://localhost/alumnos";
            username= "root";
            password = "n0m3l0";
            
            driver = "com.mysql.jdbc.Driver";
            
            try{
                //conectarnos
                Class.forName(driver);
                con = DriverManager.getConnection(url, username, password);
                
                try{
                    String nom, appat, apmat, tel;
                    int bol;
                    
                    nom = request.getParameter("nombre2");
                    System.out.println(nom);
                    appat = request.getParameter("appat2");
                    System.out.println(appat);
                    apmat = request.getParameter("apmat2");
                    System.out.println(apmat);
                    tel = request.getParameter("tel2");
                    System.out.println(tel);
                    bol = Integer.parseInt(request.getParameter("boleta2"));
                    System.out.println(bol);
                    
                    set = con.createStatement();
                    
                    String q = "update alumnobatiz set nombre = '"+nom+"', "
                            + "appat = '"+appat+"', apmat = '"+apmat+"', "
                            + "telefono = '"+tel+"' "
                            + "where boleta = "+bol+" ";
                    
                    int registro = set.executeUpdate(q);
                    
                    %>
                    <h1>Actualizacion Exitosa</h1>
                    <%
                
                }catch(SQLException es){
                    System.out.println("Error al actualizar en la tabla");
                    System.out.println(es.getMessage());
                    %>
                    <h1>No se pudo actualizar en la tabla</h1>
                    <%
                
                }
            }catch(Exception e){
                System.out.println("Error al conecta la BD");
                System.out.println(e.getMessage());
                %>
                <h1>No conecto con la BD T_T</h1>
                <%
            
            }
            
            %>
        
            <a href="index.html">Regresar a Principal</a>
    </body>
</html>
