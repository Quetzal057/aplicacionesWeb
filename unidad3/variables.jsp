<%@ page contentType="text/html; charset=utf-8"language="java" %>
<%!
String nombre = "Nayeth";
int anio = 2024;
float grados = 27.4f; // se hace un parsing/casting en java 
double euro = 19.53;
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=divice-width, initial-scale=1">
	<title>Declaracion de Variables en JSP</title>
</head>
<body>
	<center>
		<h2 style="color:blue">Que tal, mi nombre es <%=nombre%>.</h2>
		<h2 style="color:red">Hoy es viernes 28 de julio de <%=anio%>.</h2>
		<h2 style="color:green">El clima tiene  <%grados%> °c y el Euro se cotiza en <%=euro%> pesos mexicanos.</h2>
		<a href="index.jsp">Regresar></a>

	</center>>
		
</body>
</html>