<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Examen de la Unidad 3 - Solicitar</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Exámen de la Unidad 3</h1>
        <h2>Solicitud de Creación de Base de Datos</h2>
        <form action="examen-ejecutar.jsp" method="post" onsubmit="return validarFormulario();">
            <label for="dbname">Nombre de la Base de Datos :</label>
            <input type="text" id="dbname" name="dbname" required minlength="5" maxlength="10">
            <p id="error-msg"></p>
            <button type="submit">Enviar</button>
        </form>
    </div>

    <script>
        function validarFormulario() {
            const dbname = document.getElementById('dbname').value;
            const errorMsg = document.getElementById('error-msg');
            const regex = /^[a-z]{5,10}$/;

            if (!regex.test(dbname)) {
                errorMsg.textContent = "El nombre debe tener entre 5 y 10 caracteres, solo minúsculas, sin espacios ni caracteres especiales.";
                return false;
            }

            errorMsg.textContent = "";
            return true;
        }
    </script>
</body>
</html>   