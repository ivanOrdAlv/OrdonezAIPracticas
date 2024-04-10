<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Calculadora</title>
    </head>
    <body>
        
        <h1>Bienvenido a la aplicación de Calculadora</h1>
        <br>
        <h4>Por favor, escoge el tipo de operación que vas a realizar</h4>
        
        
        <% 
            StringBuilder sb=new StringBuilder();
            boolean error=false;
              String clase="color: blue";
            if (request.getParameter("enviar")!=null){
                try{
                    
                    double operando1=Double.parseDouble(request.getParameter("op1"));
                    double operando2=Double.parseDouble(request.getParameter("op2"));
                    
                    String operacion = request.getParameter("operacion");
                           
                     switch (operacion) {
            case "sumar":
                sb.append("La suma de ").append(operando1).append(" + ")
                        .append(operando2).append(" = ").append(operando1 + operando2).append("<br>");
                break;
            case "restar":
                sb.append("La resta de ").append(operando1).append(" - ")
                        .append(operando2).append(" = ").append(operando1 - operando2).append("<br>");
                break;
            case "multiplicar":
                sb.append("La multiplicacion de ").append(operando1).append(" * ")
                        .append(operando2).append(" = ").append(operando1 * operando2).append("<br>");
                break;
            case "dividir":
                sb.append("La división de ").append(operando1).append(" / ")
                        .append(operando2).append(" = ").append(operando1 / operando2);
                break;
            default:
                sb.append("Operación no válida");
        }
                    %>
                    <br>
                    <button class="btn mt-5 ml-5"><a href="calculadora.jsp">Volver a intentarlo</a></button>
                    <br>
                    <%
            }catch(NumberFormatException e){
                sb.append("Algún número no es válido");
                error=true;
                
                }catch(ArithmeticException e2){
                sb.append("No se puede hacer esa operación");
                error=true;
            }
              
                if(error){
                clase="color: red";
              
            %>
            <button class="btn mt-5 mb-5 ml-5"><a href="calculadora.jsp">Volver a intentarlo</a></button>
            <%
                }
                %>
            <p style="<%= clase %>"><%=sb.toString()%></p>
            <% 
                }else{
            %>
        <form action="calculadora.jsp" method="post">
            
             <br>
       <input type="radio" name="operacion" value="sumar">Sumar
        <br>
        <input type="radio" name="operacion" value="restar">Restar
        <br>
        <input type="radio" name="operacion" value="multiplicar">Multiplicar
        <br>
        <input type="radio" name="operacion" value="dividir">Dividir
        <br>
            
            <label>Primer operando: </label>
            <input type="text" name="op1" placeholder="Primer operando" class="mb-3 mt-3 ml-5"/><br>
            
            <label>Segundo operando: </label>
            <input type="text" name="op2" placeholder="Segundo operando" class="mb-3 ml-5"/><br>
            
            <input type="submit" name="enviar" class="mb-3 ml-5"/>
        </form>
        
        
            <%
                }
                %>
                
                  <button class="btn btn-outline-secondary ml-5"><a href="../index.html">Volver a la página inicial</a></button>
    </body>
</html>
