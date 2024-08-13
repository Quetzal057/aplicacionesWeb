<%@ page contentType="text/html; charset=utf-8" language="java" %>
<center>
    <h4 style="color:#2231C6">Uso del método Get</h4>
    <form action="nombre-leer.jsp" method="get">
        <table>
            <tr>
                <td>Nombre:</td>
                <td><input type="text" name="nom" required maxlength="30" pattern="[a-zA-Z\s]{1,50}" 
                    placeholder="No números"></td>
            </tr>
            <tr>
                <td><center><input type="submit" name="enviar"></center></td>
                <td><center><input type="reset" name="borrar"</center></td>
            </tr>
        </table>
    </form>
    <a href="index.jsp">Regresar</a>