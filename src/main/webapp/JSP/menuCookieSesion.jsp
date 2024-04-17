<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Menu Cookie Sesion</title>
    </head>
    
    <style>
        #formu{
             border: 1px solid black;
            padding: 10px;
            border-radius: 1%;
        }
    </style>
    
    <body>
        <form action="../JSP/controlCookieSesion.jsp" method="post" id="formu">
            
            <label for="nombre">Nombre de la cookie: </label>
            <input type="text" name="nombre" id="nombre">
            
            <label for="valor">Valor de la cookie: </label>
            <input type="text" name="valor" id="valor">
            
            <input type="submit" name="enviar" value="crear">
            <input type="submit" name="enviar" value="visualizar">
            <input type="submit" name="enviar" value="modificar">
            <input type="submit" name="enviar" value="eliminar">
            <input type="submit" name="enviar" value="indice">
            
            <% String mensaje = (request.getParameter("mensaje") != null) ? request.getParameter("mensaje") : ""; %>
            <%= mensaje %> 
        </form>
    </body>
</html>