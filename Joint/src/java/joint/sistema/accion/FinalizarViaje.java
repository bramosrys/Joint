package joint.sistema.accion;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import joint.sistema.gestion.GestionadorViaje;
import joint.sistema.principal.Direccion;
import joint.sistema.principal.Trabajador;
import joint.sistema.principal.Viaje;

/**
 *
 * @author jdiaz
 */
public class FinalizarViaje extends HttpServlet {

    private GestionadorViaje gviaje;
    private Viaje viaje;

    private void iniciarGestionViaje(Viaje viaje){
        gviaje=new GestionadorViaje(viaje);
    }  

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession sesion = request.getSession();
        if(request.getParameter("idViaje")!=null){
            if(request.getParameter("fechallegada")!=null&&request.getParameter("horaentrada")!=null){
                if(request.getParameter("kilometraje")!=null){
                    System.out.println("entre a finalizar viaje");
                    
                    
                    String fechaLlegada=request.getParameter("fechallegada");
                    String horaEntrada=request.getParameter("horaentrada");
                    int kilometraje=Integer.parseInt(request.getParameter("kilometraje"));
                    int idViaje=Integer.parseInt(request.getParameter("idViaje"));
                    viaje=new Viaje(fechaLlegada,horaEntrada,kilometraje,idViaje);
                    iniciarGestionViaje(viaje);
                    int error=gviaje.finalizarViaje(viaje);
                    if(error==-1){//hubo un error
                        request.setAttribute("error","true");
                        request.getRequestDispatcher("sistema/vista/accion/acciones/despachador/respuestaFinalizarViaje.jsp").forward(request, response);
                    }else{
                        request.getRequestDispatcher("sistema/vista/accion/acciones/despachador/respuestaFinalizarViaje.jsp").forward(request, response);
                    }
                }
            }
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
