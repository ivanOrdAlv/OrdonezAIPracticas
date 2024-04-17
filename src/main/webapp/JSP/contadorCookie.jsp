<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contador Cookie</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <% 
        int contador = 0;
        
        Cookie[] cookies = request.getCookies();
        if(cookies != null) {
            for(Cookie cookie : cookies) {
                if(cookie.getName().equals("contadorCookie")) {
                    contador = Integer.parseInt(cookie.getValue());//Igualamos el contador al valor de la cookie
                    break;
                }//FinIf
            }//FinFor
        }//FinIf
        
        if(request.getParameter("eliminar") != null) {
            Cookie cookieEliminar = new Cookie("contadorCookie", "");//Me creo una nueva cookie
            cookieEliminar.setMaxAge(0); // Elimino la cookie
            response.addCookie(cookieEliminar);
            contador = 0; // Reinicio el contador
        }//FinIf
        
        contador++;
        
        Cookie cookie1 = new Cookie("contadorCookie", String.valueOf(contador));
        cookie1.setMaxAge(3600); 
        response.addCookie(cookie1);
    %>
    
    <h3>Ha accedido un total de <%= contador %> veces</h3>
    
     <form action="" method="post">
        <input type="hidden" name="eliminar" value="true">
        <button type="submit" class="btn btn-danger">Eliminar Cookie</button>
    </form>
    
    <a href="../JSP/contadorCookie.jsp"><button class="btn btn-success">Refrescar página</button></a>
    <a href="../index.html"><button class="btn btn-primary">Volver a menú inicial</button></a>
    
</body>
</html>