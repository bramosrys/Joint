package joint.sistema.control;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import joint.sistema.gestion.GestionadorCalificacion;
import joint.sistema.principal.Trabajador;
import joint.sistema.principal.Viaje;

public class CargarFormularioCalificar extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession sesion = request.getSession();
        int idTrabajador =(Integer)sesion.getAttribute("idTrabajador");
        Trabajador t=new Trabajador();
        t.setIdTrabajador(idTrabajador);
        GestionadorCalificacion gc=new GestionadorCalificacion();
        /* obtener id de los viajes y viajes sin calificar*/
            ArrayList idViajes; 
            idViajes=(ArrayList)gc.getViajesNoCalificadosTrabajador(t);
            ArrayList viajes= new ArrayList();
            int i=0;
            if(idViajes==null){//no hay que calificar
               request.setAttribute("error", "vacio");//los viajes ya incluyen el id de su calificacion
               request.getRequestDispatcher("sistema/vista/accion/acciones/General/formularioCalificarViaje.jsp").forward(request, response); 
            }else{
                while(i<idViajes.size()){
                    int idviaje=Integer.parseInt(idViajes.get(i++).toString());
                    Viaje viaje=new Viaje();
                    viaje=gc.getInfoViajeNoCalificado(idviaje, idTrabajador);
                    viajes.add(viaje);
                }
                request.setAttribute("viajes", viajes);//los viajes ya incluyen el id de su calificacion
                request.getRequestDispatcher("sistema/vista/accion/acciones/General/formularioCalificarViaje.jsp").forward(request, response);
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
