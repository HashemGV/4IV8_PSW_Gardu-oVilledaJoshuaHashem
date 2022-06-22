/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

/**
 *
 * @author Alumno
 */
import java.sql.*;

public class conexion {
    public static Connection getConnection(){
        String url, username,password;
        url="jdbc:mysql://localhost/empresa";
        username="root";
        password="n0m3l0";
        Connection con=null;
        
        try{
            Class.forName("com.msql.jdbc.Driver");
            con=DriverManager.getConnection(url, username, password);
            System.out.println("Se conecto a la BD");
        }catch(Exception e){
            System.out.println("No se conecto con la BD");
            System.out.println(e.getMessage());
        }
        return con;
    }
}
