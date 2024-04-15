<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Map.Entry"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Formulario con Map</title>
</head>
<body>
<%
    StringBuilder sb = new StringBuilder("<h1>Datos del formulario simple con Map</h1>");
    
    Map<String, String[]> paramMap = request.getParameterMap();
    sb.append("<ul>");

    for (Entry<String, String[]> entry : paramMap.entrySet()) {
        String nombreCampo = entry.getKey();
        if (!nombreCampo.equalsIgnoreCase("enviar")) {
            sb.append("<li>");
            if (nombreCampo.equalsIgnoreCase("marca")) {
                String[] marcas = entry.getValue();
                sb.append(nombreCampo).append(": ");
                for (int i = 0; i < marcas.length; i++) {
                    sb.append(marcas[i]);
                    if (i < marcas.length - 1) {
                        sb.append(", ");
                    } else {
                        sb.append(".");
                    }//FinIfElse
                }//FinFor
            } else {
                sb.append(nombreCampo).append(": ").append(request.getParameter(nombreCampo));
            }//FinIfElse
            sb.append("</li>");
        }//FinIf
    }//FinForEach

    sb.append("</ul>");
%>
        <div>
        <%= sb.toString()%>
        </div>
        <button class="btn btn-outline-secondary mb-2"><a href="../HTML/fsimple.html">Volver al formulario</a></button>
         <button class="btn btn-outline-success ml-5"><a href="../index.html">Volver al menú</a></button>
    </body>
</html>