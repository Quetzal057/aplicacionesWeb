<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%!
    int promedio = 95;
    String uni = "UT de la Costa";
%>
<center>
    <h1 style="color:#475841">Uso de if en JSP</h1>
<%
    if (promedio > 90){
%>
    <h3 style="color:#904eac">Tienes derecho a beca</h3>
<%        
    } else {
%>
    <h3 style="color:#904eac">No tienes derecho a beca</h3>
<%        
    }
    if (uni.equals("UT de la Costa")) {
%>
    <h3 style="color:#3D2c6D">Tú estudias en la UTC</h3>
<%
    }
%>
    <a href="index.jsp">Regresar</a>
</center>