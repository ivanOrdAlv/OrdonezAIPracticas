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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html lang=\"es\">");
            out.println("<head>");
            out.println("<title>Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PrimerControlador está en el contexto " + request.getContextPath() + "</h1>");
            out.println("<p>El método de envío es: "+request.getMethod()+"</p>");
            String operador1=request.getParameter("param1");
            String operador2=request.getParameter("param2");
            int resultado=Integer.parseInt(operador1)+Integer.parseInt(operador2);
            out.println("<p>El resultado de sumar"+operador1+" más "+operador2+" es: "+resultado+"</p>");
        for (Enumeration<?> e = request.getHeaderNames(); e.hasMoreElements();) {
        String nextHeaderName = (String) e.nextElement();
        String headerValue = request.getHeader(nextHeaderName);
}
            out.println("<p><a href=\"index.html\">Volver</a></p>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
       response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PrimerControlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>PrimerControlador está en el contexto " + request.getContextPath() + "</h1>");
            out.println("<p>El método de envío es: "+request.getMethod()+"</p>");
            out.println("<p><a href=\"index.html\">Volver</a></p>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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