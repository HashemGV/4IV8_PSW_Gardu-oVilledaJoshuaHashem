/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import modelo.empleados;

/**
 *
 * @author Alumno
 * 
 * Esta clase son los metodos de acceso a la info we
 */
public class AccionesEmpleado {
    //estes el CRUD :0
    //registro
    public static int registroEmpleado(empleados e){
        int estatus=0;
        try{
            //establece los metodos para acceder a la info, osea la query
            Connection con=conexion.getConnection();
            String q="insert into empleados(nombre, password, email, pais)"
                    +"value(?, ?, ?, ?)";
            //preparas la sentencia, zorra
            PreparedStatement ps=con.prepareStatement(q);
            //objetame esta empleado
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getEmail());
            ps.setString(4, e.getPais());
            //se la ejecutas a la query
            estatus=ps.executeUpdate();
            System.out.println("Registro Exitoso :3");
            con.close();
        }catch(Exception ex){
            System.out.println("Error al registrar elmpleado UnU");
            System.out.println(ex.getMessage());
        }
        return estatus;
    }
    //consultame los empleados prra
    public static List<empleados> getAllEmpleados(){
        //primero declara el array list we
        List<empleados> lista=new ArrayList<empleados>();
        try{
            //establece la conexion
            Connection con = conexion.getConnection();
            String q="select * from empleados";
            PreparedStatement ps=con.prepareStatement(q);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                //aqui se crea el objeto del empleado
                empleados e=new empleados();
                e.setId(rs.getInt(1));
                e.setNombre(rs.getString(2));
                e.setPassword(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setPais(rs.getString(5));
                lista.add(e);
            }
            System.out.println("El empleado se la consulto xd");
            con.close();
        }catch(Exception ex){
            System.out.println("No se pudo consultar UnU");
   
         System.out.println(ex.getMessage());
        }
        return lista;
    }
    
    //buscar empleado por ID
    public static empleados buscarEmpleadosID(int id){
        //aqui se crea el objeto del empleado
                empleados e=new empleados();
            try{
                //establece la conexion
                Connection con = conexion.getConnection();
                String q="select * from empleados where id=?";
                PreparedStatement ps=con.prepareStatement(q);
                ps.setInt(1,id);
                ResultSet rs=ps.executeQuery();
                if(rs.next()){
                    e.setId(rs.getInt(1));
                    e.setNombre(rs.getString(2));
                    e.setPassword(rs.getString(3));
                    e.setEmail(rs.getString(4));
                    e.setPais(rs.getString(5));
                }
                System.out.println("El empleado se la consulto xd");
                con.close();
            }catch(Exception ex){
                System.out.println("No se pudo consultar UnU");

             System.out.println(ex.getMessage());
            }
            return e;
    }
    //borrar empleado
    public static int eliminarEmpleado(int id){
        //ocupo saber el estado de la query pa saber si se ejecuto o nel
        int estatus=0;
        try{
            //establece la conexion
            Connection con = conexion.getConnection();
            String q="delete from empleados where id=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1,id);
            estatus=ps.executeUpdate();
            System.out.println("El objetivo ha sido eliminado");
            con.close();
        }catch(Exception ex){
            System.out.println("No se murio, tenia vida extra we :,v");
   
         System.out.println(ex.getMessage());
        }
        return estatus;
    }
    //actualizar empleado
    public static int actualizarEmpleado(empleados e){
        //ocupo saber el estado de la query pa saber si se ejecuto o nel
        int estatus=0;
        try{
            //establece la conexion
            Connection con = conexion.getConnection();
            String q="update empleados set nombre=?, password=',"
                    +"email=?, pais=? where id=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getEmail());
            ps.setString(4, e.getPais());
            ps.setInt(5,e.getId());
            estatus=ps.executeUpdate();
            System.out.println("Actualizame esta");
            con.close();
        }catch(Exception ex){
            System.out.println("No se pudo actualizar");
   
         System.out.println(ex.getMessage());
        }
        return estatus;
    }
}

