package es.albarregas.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Iván
 */ 
@WebServlet(name = "PrimerController", urlPatterns = {"/PrimerController"})
public class PrimerController extends HttpServlet {
/**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
 
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
       
    Enumeration<String> nombreCabeceras = request.getHeaderNames();
    
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();
    out.println("<!DOCTYPE html>");
    out.println("<html lang=\"es\">");
    out.println("<head>");
    out.println("<meta charset=\"UTF-8\">");
    out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
    out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">");
    out.println("<title>Cabecera GET</title>");
    out.println("</head>");
    out.println("<body>");
    
    out.println("<div class=\"container\">");
    out.println("<h1 class=\"mt-5 mb-5\">Cabecera HTTP a través de GET</h1>");
    out.println("<ul class=\"list-group\">");

    while (nombreCabeceras.hasMoreElements()) {
        String cabeceraNombre = nombreCabeceras.nextElement();
        String valorCabecera = request.getHeader(cabeceraNombre);
        out.println("<li class=\"list-group-item\"><strong>" + cabeceraNombre + ":</strong> " + valorCabecera + "</li>");
    }//FinWhile
    
    out.println("</ul>");
    out.println("<a href=\"index.html\" class=\"btn btn-success mt-5 mb-5\">Volver al menú</a>");
    
    out.println("</div>");
    out.println("</body>");
    out.println("</html>");
}//FinDoGet

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
   
    Enumeration<String> nombreCabeceras = request.getHeaderNames();
    
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();
    out.println("<!DOCTYPE html>");
    out.println("<html lang=\"es\">");
    out.println("<head>");
    out.println("<meta charset=\"UTF-8\">");
    out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
     out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">");
    out.println("<title>Cabecera POST</title>");
    out.println("</head>");
    out.println("<body>");
    
    out.println("<div class=\"container bg-slightgrey\">");
    out.println("<h1 class=\"mt-10 mb-5\">Cabecera HTTP a través de POST</h1>");
    out.println("<ul class=\"list-group\">");

    while (nombreCabeceras.hasMoreElements()) {
        String cabeceraNombre = nombreCabeceras.nextElement();
        String valorCabecera = request.getHeader(cabeceraNombre);
        out.println("<li class=\"list-group-item\"><strong>" + cabeceraNombre + ":</strong> " + valorCabecera + "</li>");
    }//FinWhile
    
    out.println("</ul>");
    out.println("<a href=\"index.html\" class=\"btn btn-success mt-5 mb-5\">Volver al menú</a>");
    
    out.println("</div>");
    out.println("</body>");
    out.println("</html>");
}//FinDoPost

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}