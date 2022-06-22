<%-- 
    Document   : inicio
    Created on : 16/05/2022, 08:47:57 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //primero vanis a saber si tiene sesion
    String usuario="";
    HttpSession sesionusu=request.getSession();
    if(sesionusu.getAttribute("usuario")==null){
    %>
    <jsp:forward page="index.html">
        <jsp:param name="error" value="Es obligatorio tener una sesion activa"></jsp:param>
    </jsp:forward>
    <%
    }else{
        //si hay sesion activa
        usuario=(String)sesionusu.getAttribute("usuario");
    }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        ENCABEZADO
        <h1>sI EXISTE</h1>
        <%
            //SI PRIVILEGIO ==1
            /*quiero q salga la tabla de todos los elementos de los reportes del equipo
            select 
            */
            %>
        <%
            //si privilegio ==2
            %>
        <%
            //SI PRIVILEGIO ==1
            %>
            patitas
    </body>
</html>
