package joint.sistema.control;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import joint.sistema.gestion.GestionadorTrabajador;
import joint.sistema.principal.Trabajador;


public class BuscarMTrabajador extends HttpServlet {
    private GestionadorTrabajador gestionadorT;
    private Trabajador trabajador;

    private void iniciarGestionTrabajador(int noEmpleado){
        trabajador= new Trabajador(noEmpleado);
        gestionadorT = new GestionadorTrabajador(trabajador);
    }
    private void limpiar(){
        gestionadorT.destruirGestionador();
        System.gc();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if(request.getParameter("noEmpleado")!=null){
            int noEmpleado=Integer.parseInt(request.getParameter("noEmpleado"));
            iniciarGestionTrabajador(noEmpleado);
            boolean existe;
            boolean registro;
            existe=gestionadorT.existeTrabajador();
            registro=gestionadorT.estaRegistrado();
            if(existe && registro){
                request.setAttribute("existe", "true");
                request.setAttribute("noEmpleado", String.valueOf(noEmpleado));
                request.getRequestDispatcher("CargarModificarTrabajador").forward(request, response);
            }else{
                request.setAttribute("existe", "false");
                RequestDispatcher a = request.getRequestDispatcher("sistema/vista/accion/acciones/respuestaModificarTrabajador.jsp");
                a.forward(request, response);

            }
        }else{
            response.sendRedirect("Joint/error.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        processRequest(request, response);
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
        processRequest(request, response);
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
