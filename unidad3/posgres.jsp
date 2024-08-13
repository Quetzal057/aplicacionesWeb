<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%! import="java.sql.DriverManager" import=
"java.sql.Connection"%>

<%!}
    String driver = org,postgresql.Driver; //Controlador o Driver de PosgresSQL
    String ur1 = " jdbc:posgresql://localhost:5432/"; //Ruta de coneccion del SuperUsuario postgresQL
    String user = "postgres"; //Usuario del super ususario de prostgreSQL
    String password = "Nayeth"; //Contraseña del SuperUsuario de postgreSQL
    Connection conexion;

        out.print("<center><h2>Conexión al SuperUsuario postgres</h2>");

        try{ Class.forName(driver); //CArga el Controlador o Driver de PostgreSQL conexion
        = DriverManager.getConnection(url, user, password); //Se hace la conexión
        out.print("Conexión exitosa"); conexion.close(); //Cerrar la conexion
        }catch(Exception e){

        out.print("Ocurrió el siguiente error: "+e);
        }
        out.print("<br><a href='index.jsp'>Regresar</a></center>");
        

