<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%
    StringBuilder mensaje = new StringBuilder("menuCookie.jsp?mensaje=");

    if(!request.getParameter("enviar").equals("indice")) {
        if(request.getParameter("nombre") != null && request.getParameter("nombre").length() != 0) {
            String nombreCookie = request.getParameter("nombre");
            Cookie[] cookies = request.getCookies();
            Cookie cookieNueva = null;

            if(cookies != null) {
                for(int i = 0; i < cookies.length; i++) {
                    if(cookies[i].getName().equals(nombreCookie)) {
                        cookieNueva = cookies[i];
                        break;
                    }//FinIf
                }//FinFor
            }//FinIf

            if(cookieNueva == null) {
            cookieNueva = new Cookie(nombreCookie, URLEncoder.encode(request.getParameter("valor"), "UTF-8"));
                    cookieNueva.setMaxAge(60 * 60);
                    response.addCookie(cookieNueva);
                    mensaje.append("La cookie: ").append(nombreCookie).append(" con valor: ").append(request.getParameter("valor")).append(" ha sido creada");
      
            } else {
                if(request.getParameter("enviar").equals("modificar")) {
                    cookieNueva.setValue(URLEncoder.encode(request.getParameter("valor"), "UTF-8"));
                    response.addCookie(cookieNueva);
                    mensaje.append("El valor de la cookie: ").append(nombreCookie).append(" se ha modificado");
                } else if(request.getParameter("enviar").equals("eliminar")) {
                    cookieNueva.setMaxAge(0); // Elimino la cookie
                    response.addCookie(cookieNueva);
                    mensaje.append("La cookie: ").append(nombreCookie).append(" se ha eliminado correctamente");
                } else if(request.getParameter("enviar").equals("visualizar")) {
                    mensaje.append("El nombre de la cookie es: ").append(nombreCookie).append(", y su valor es: ").append(URLDecoder.decode(cookieNueva.getValue(), "UTF-8"));
                }//FinIfElse
            }//FinIfElse
        } else {
            mensaje.append("El nombre de la cookie es necesario");
        }//FinIfElse
    } else {
        mensaje.replace(0, mensaje.length(), request.getContextPath());
    }//FinIfElse

    response.sendRedirect(mensaje.toString());
%>