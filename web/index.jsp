<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="js/scripts.js"></script>
        <link rel="stylesheet" href="css/estilos.css" type="text/css" media="screen">
    </head>
    <body>
        <form id="form1">
        <table>
        <tr>
        <td>
            <label for="num1">Ingresar numero 1:</label>
            <input type="text" id="num1" name="num1" />
        </td>
        <td>
            <label for="num2">Ingresar numero 2:</label>
            <input type="text" id="num2" name="num2" />
        </td>
        <td>
            <label for="operacion">Seleccionar operacion:</label>
            <select id="operacion" name="operacion">
                <option value="1" selected="">Suma</option>
                <option value="2">Resta</option>
                <option value="3">Multiplicacion</option>
                <option value="4">Division</option>
            </select>
        </td>        
        <td>			
		<button type="submit" id="btn1" name="btn1">Calcular</button>
        </td>
        </tr>
        <tr>
        <td>
        <p id="resultado" />
        </td>
        </tr>
        </table>
        </form>
    </body>
</html>
