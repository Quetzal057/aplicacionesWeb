<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%!
    String dia; // Declaración de variable
%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Uso de string en JSP</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="">
    </head>
    <body>
        <%
        String mes = "junio"; // Declaración y asignación de valor a la variable
        int anio; // Declaración de variable
        dia = "viernes";
        anio = 2024;
        %>
        <center>
            <h2 style="color:red">Hoy es <%= dia %> 28 de <%= mes %> de <%= anio %></h2>
            <a href="index.jsp">Regresar</a>
        </center>
        <script src="" async defer></script>
    </body>
</html>