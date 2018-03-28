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
                        <div class="Input">
                            <input type="text" id="num1" name="num1" class="Input-text" placeholder="Ingresa numero 2" />
                            <label for="num1" class="Input-label">Numero 1</label>
                        </div>
                    </td>
                    <td>
                        <div class="Input">
                            <input type="text" id="num2" name="num2" class="Input-text" placeholder="Ingresa numero 2" />
                            <label for="num2" class="Input-label">Numero 2</label>
                        </div>
                    </td>
                    <td>
                        <div class="Input">
                            <select id="operacion" name="operacion" class="Input-text">
                                <option value="1" selected="">Suma</option>
                                <option value="2">Resta</option>
                                <option value="3">Multiplicacion</option>
                                <option value="4">Division</option>
                            </select>
                            <label for="operacion" class="Input-label">Seleccionar Operaci&oacute;n:</label>
                        </div>
                    </td>        
                    <td>
                        <div class="Input">
                            <button type="submit" id="btn1" name="btn1" class="Input-text">Calcular</button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <div class="Input">
                            <p id="resultado" class="Input-text" />
                        </div>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
