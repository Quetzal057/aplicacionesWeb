<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Examen de la Unidad 3 - Ejecutar</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Examen de la Unidad 3</h1>
        <h2>Resultado de la Solicitud</h2>
        <%
            String dbname = request.getParameter("dbname");
            String message = "";
            boolean dbCreated = false;

            Connection conn = null;
            Statement stmt = null;

            try {
                Class.forName("org.postgresql.Driver");
                conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "123");
                stmt = conn.createStatement();

                // Crear base de datos
                String sqlCreate = "CREATE DATABASE " + dbname;
                stmt.executeUpdate(sqlCreate);
                message = "Base de datos '" + dbname + "' creada exitosamente.<br>";
                dbCreated = true;
            } catch (Exception e) {
                message = "Ocurrió un error: " + e.getMessage();
            } finally {
                try { if (stmt != null) stmt.close(); } catch (Exception e) {}
                try { if (conn != null) conn.close(); } catch (Exception e) {}
            }
        %>
        <p><%= message %></p>

        <% if (dbCreated) { %>
            <form action="examen-ejecutar.jsp" method="post">
                <input type="hidden" name="dbname" value="<%= dbname %>">
                <input type="hidden" name="delete" value="true">
                <button type="submit">Eliminar Base de Datos</button>
            </form>
        <% } %>

        <a href="examen-solicitar.jsp">Volver a solicitar</a>
    </div>

    <%
        if ("true".equals(request.getParameter("delete"))) {
            try {
                Class.forName("org.postgresql.Driver");
                conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "123");
                stmt = conn.createStatement();

                // Borrar base de datos
                String sqlDrop = "DROP DATABASE " + dbname;
                stmt.executeUpdate(sqlDrop);

                // Mostrar mensaje y redirigir
                out.println("<script>alert('Base de datos \"" + dbname + "\" eliminada exitosamente.');</script>");
                response.setHeader("Refresh", "1; URL=examen-solicitar.jsp");

            } catch (Exception e) {
                out.println("<script>alert('Ocurrió un error al eliminar la base de datos: " + e.getMessage() + "');</script>");
            } finally {
                try { if (stmt != null) stmt.close(); } catch (Exception e) {}
                try { if (conn != null) conn.close(); } catch (Exception e) {}
            }
        }
    %>
</body>
</html>