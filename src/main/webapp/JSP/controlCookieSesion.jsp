<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%
    StringBuilder mensaje = new StringBuilder("menuCookieSesion.jsp?mensaje=");

    if(!request.getParameter("enviar").equals("indice")) {
        if(request.getParameter("nombre") != null && request.getParameter("nombre").length() != 0) {
            String nombreSesion = request.getParameter("nombre");
            HttpSession sesion = request.getSession();
            String valorSesion = (String) sesion.getAttribute(nombreSesion);

            if(valorSesion == null) {
             
                String valorNuevo = request.getParameter("valor");
                sesion.setAttribute(nombreSesion, valorNuevo);
                mensaje.append("La sesión: ").append(nombreSesion).append(" con valor: ").append(valorNuevo).append(" ha sido creada");
            } else {
                if(request.getParameter("enviar").equals("modificar")) {
                    String valorNuevo = request.getParameter("valor");
                    sesion.setAttribute(nombreSesion, valorNuevo);
                    mensaje.append("El valor de la sesión: ").append(nombreSesion).append(" se ha modificado");
                } else if(request.getParameter("enviar").equals("eliminar")) {
                    sesion.removeAttribute(nombreSesion);
                    mensaje.append("La sesión: ").append(nombreSesion).append(" se ha eliminado correctamente");
                } else if(request.getParameter("enviar").equals("visualizar")) {
                    mensaje.append("El nombre de la sesión es: ").append(nombreSesion).append(", y su valor es: ").append(valorSesion);
                }//FinIfElse
            }//FinIfElse
        } else {
            mensaje.append("El nombre de la sesión es necesario");
        }//FinIfElse
    } else {
        mensaje.replace(0, mensaje.length(), request.getContextPath());
    }//FinIfElse

    response.sendRedirect(mensaje.toString());
%>