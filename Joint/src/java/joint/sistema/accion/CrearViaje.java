package joint.sistema.accion;

import java.io.IOException;
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
public class CrearViaje extends HttpServlet {
    private GestionadorViaje gviaje;
    private Direccion direccion;
    private Viaje viaje;

    private void iniciarGestionViaje(Viaje viaje){
        gviaje=new GestionadorViaje(viaje);
    }  

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession sesion = request.getSession();
        if(request.getParameter("idOperador")!=null&&sesion.getAttribute("idTrabajador")!=null){
            if(request.getParameter("fechasalida")!=null&&request.getParameter("horasalida")!=null){
                if(request.getParameter("calle")!=null&&request.getParameter("numero")!=null&&request.getParameter("colonia")!=null){
                    if(request.getParameter("delegacion")!=null&&request.getParameter("estado")!=null&&request.getParameter("cp")!=null){
                       System.out.println("entre a crear viaje");
                       Trabajador operador=new Trabajador();
                       operador.setIdTrabajador(Integer.parseInt(request.getParameter("idOperador")));
                       Trabajador despachador=new Trabajador();
                       despachador.setIdTrabajador((Integer)sesion.getAttribute("idTrabajador"));
                       String fechaSalida=request.getParameter("fechasalida");
                       String horaSalida=request.getParameter("horasalida");
                       String calle=request.getParameter("calle");
                       String numero=request.getParameter("numero");
                       String colonia=request.getParameter("colonia");
                       String delegacion=request.getParameter("delegacion");
                       String estado=request.getParameter("estado");
                       int cp=Integer.parseInt(request.getParameter("cp"));
                       direccion=new Direccion(calle,estado,colonia,numero,cp,delegacion);
                       viaje=new Viaje(direccion,fechaSalida,horaSalida,operador,despachador);
                       iniciarGestionViaje(viaje);
                       int error=gviaje.crearViaje(viaje);
                       if(error==-1){//hubo un error
                           request.setAttribute("error","true");
                           request.getRequestDispatcher("sistema/vista/accion/acciones/despachador/respuestaCrearViaje.jsp").forward(request, response);
                       }else{
                           request.setAttribute("idViaje",error);
                           request.getRequestDispatcher("sistema/vista/accion/acciones/despachador/respuestaCrearViaje.jsp").forward(request, response);
                       }
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
