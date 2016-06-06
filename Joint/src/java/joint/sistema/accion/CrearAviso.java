package joint.sistema.accion;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import joint.sistema.gestion.GestionadorPublicacion;
import joint.sistema.principal.Publicacion;
import joint.sistema.principal.Trabajador;

/**
 *
 * @author jdiaz
 */
public class CrearAviso extends HttpServlet {
    private Publicacion publicacion;
    private GestionadorPublicacion pb;
    
    private void iniciarGestionPublicacion(String titulo, String contenido){
        pb=new GestionadorPublicacion();
        publicacion =new Publicacion(titulo,contenido);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if(request.getParameter("titulo")!=null && request.getParameter("contenido")!=null ){
            System.out.println("entre a crear publicacion servlet");
            String titulo=request.getParameter("titulo");
            String contenido=request.getParameter("contenido");
            iniciarGestionPublicacion(titulo,contenido);
            HttpSession sesion = request.getSession();
            Trabajador t=new Trabajador();
            t.setIdTrabajador((Integer)sesion.getAttribute("idTrabajador"));
            int error=pb.nuevoAviso(publicacion, t);
            if(error==1){
                request.getRequestDispatcher("sistema/vista/accion/acciones/General/respuestaCrearAviso.jsp").forward(request, response);
            }else{
                request.setAttribute("error", "error");
                request.getRequestDispatcher("sistema/vista/accion/acciones/General/respuestaCrearAviso.jsp").forward(request, response);
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
