<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="java.sql.DriverManager, java.sql.Connection, java.sql.SQLException" %>

<%! 
    String controlador = "org.postgresql.Driver";
    String ruta = "jdbc:postgresql://localhost:5432/escuela";
    String usuario = "postgres";
    String contrasenia = "123";
    Connection conexion;
%>

<%
    out.print("<center><h2>Conexión a BD escuela</h2>");
    try {
        Class.forName(controlador);
        conexion = DriverManager.getConnection(ruta, usuario, contrasenia);
        out.print("Conexión exitosa a BD escuela");
        conexion.close();
    } catch (ClassNotFoundException e) {
        out.print("Error: Controlador no encontrado - " + e.getMessage());
    } catch (SQLException e) {
        out.print("Error: Problema con la conexión - " + e.getMessage());
    } catch (Exception e) {
        out.print("Ocurrió un error: " + e.getMessage());
    }

    out.print("<br><a href='index.jsp'>Regresar</a></center>");
%>
