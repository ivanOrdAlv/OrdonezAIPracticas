<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contador Sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <% 
        int contador = 0;
        
        HttpSession sesion = request.getSession();
        
        if(sesion.getAttribute("contadorSesion") != null) {
            contador = (int) sesion.getAttribute("contadorSesion");
        }//FinIf
        
        if(request.getParameter("eliminar") != null) {
            sesion.setAttribute("contadorSesion", 0); 
            contador = 0; 
        }//FinIf
        
        contador++;
        
        sesion.setAttribute("contadorSesion", contador); 
    %>
    
    <h3>Ha accedido un total de <%= contador %> veces</h3>
    
     <form action="" method="post">
        <input type="hidden" name="eliminar" value="true">
        <button type="submit" class="btn btn-danger">Eliminar Sesión</button>
    </form>
    
    <a href="../JSP/contadorCookieSesion.jsp"><button class="btn btn-success">Refrescar página</button></a>
    <a href="../index.html"><button class="btn btn-primary">Volver a menú inicial</button></a>
    
</body>
</html>