package joint.sistema.accion;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import joint.sistema.gestion.GestionadorCalificacion;
import joint.sistema.principal.Calificacion;

/**
 *
 * @author jdiaz
 */
public class Calificar extends HttpServlet {
    private Calificacion calificacion;
    private GestionadorCalificacion gcalificacion;
    
    private void iniciarGestionCalificacion(int idCalificacion){
        calificacion=new Calificacion(idCalificacion);
        gcalificacion=new GestionadorCalificacion(calificacion);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if(request.getParameter("comentarios")!=null && request.getParameter("puntuacion")!=null && request.getParameter("idCalificacion")!=null){
            String Comentarios=request.getParameter("comentarios");
            int idCalificacion=Integer.parseInt(request.getParameter("idCalificacion"));
            int puntuacion=Integer.parseInt(request.getParameter("puntuacion"));
            String fecha;
            Calendar c = Calendar.getInstance();
            String dia = Integer.toString(c.get(Calendar.DATE));
            String mes = Integer.toString(c.get(Calendar.MONTH)+1);
            String annio = Integer.toString(c.get(Calendar.YEAR));
            fecha=annio+"-"+mes+"-"+dia;
            iniciarGestionCalificacion(idCalificacion);
            calificacion.setIdCalificacion(idCalificacion);
            calificacion.setComentario(Comentarios);
            calificacion.setFecha(fecha);
            calificacion.setValor(puntuacion);
            int error=gcalificacion.CrearCalificacionViaje(calificacion);
            if(error==-1){//hubo un error
                request.setAttribute("error","true");
                request.getRequestDispatcher("sistema/vista/accion/acciones/General/respuestaCrearCalificacionViaje.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("sistema/vista/accion/acciones/General/respuestaCrearCalificacionViaje.jsp").forward(request, response);
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
