<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%!
    float dolar;
    float libra;
    float quetzal;
%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Uso del float en JSP</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="">
    </head>
    <body>
        <%
        dolar = 18.25f; // Asignación de valor a la variable dolar
        libra = (float)23.08; // Asignación de valor a la variable libra
        quetzal = (float)2.35; // Asignación de valor a la variable quetzal
        %>
        <center>
            <h2 style="color:green">Hoy viernes 28 de junio de 2024 el tipo de cambio de divisas está a:</h2>
            <h3 style="color:purple"><%= dolar %> pesos mexicanos el dolar</h3>
            <h3 style="color:purple"><%= libra %> pesos mexicanos la libra esterlina</h3>
            <h3 style="color:purple"><%= quetzal %> pesos mexicanos el quetzal</h3>
            <a href="index.jsp">Regresar</a>
        </center>
        <script src="" async defer></script>
    </body>
</html>