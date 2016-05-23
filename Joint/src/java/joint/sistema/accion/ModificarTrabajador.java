package joint.sistema.accion;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import joint.sistema.gestion.GestionadorTrabajador;
import joint.sistema.principal.Trabajador;

public class ModificarTrabajador extends HttpServlet {
    private GestionadorTrabajador gestionadorT;
    private Trabajador trabajador;

    private void iniciarGestionTrabajador(){
        trabajador=new Trabajador();
        gestionadorT = new GestionadorTrabajador(trabajador);
    }
    private void limpiar(){
        gestionadorT.destruirGestionador();
        System.gc();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        System.out.println(request.getParameter("nombreAccion"));
        System.out.println(request.getParameter("dato"));
        String nombreAccion;
        String dato;
        int idTrabajador;
        if(request.getParameter("nombreAccion")!=null && request.getParameter("dato")!=null && request.getParameter("idTrabajador")!=null){
            nombreAccion=request.getParameter("nombreAccion");
            dato=request.getParameter("dato");
            idTrabajador=Integer.parseInt(request.getParameter("idTrabajador"));
            iniciarGestionTrabajador();
            trabajador.setIdTrabajador(idTrabajador);
            if(nombreAccion.equals("noEmpleado")){
                trabajador.setNoEmpleado(Integer.parseInt(dato));
                gestionadorT.modificarNoEmpleado(trabajador);
            }
            if(nombreAccion.equals("registro")){
                trabajador.setRegistro(dato);
                gestionadorT.modificarValorRegistro(trabajador);
            }
            if(nombreAccion.equals("nombre")){
                trabajador.setNombre(dato);
                gestionadorT.modificarNombre(trabajador);
            }
            if(nombreAccion.equals("fechaNacimiento")){
                trabajador.setFechaNacimiento(dato);
                gestionadorT.modificarFechaNacimiento(trabajador);
            }
            if(nombreAccion.equals("edad")){
                trabajador.setEdad(Integer.parseInt(dato));
                gestionadorT.modificarEdad(trabajador);
            }
            if(nombreAccion.equals("correo")){
                trabajador.setCorreo(dato);
                gestionadorT.modificarCorreo(trabajador);
            }
            if(nombreAccion.equals("contrasenia")){
                trabajador.setContrasenia(dato);
                gestionadorT.modificarContrasenia(trabajador);
            }
            if(nombreAccion.equals("cargo")){
                trabajador.setCargo(dato);
                gestionadorT.modificarCargo(trabajador);
            }
            if(nombreAccion.equals("fechaContratacion")){
                trabajador.setFechaContratacion(dato);
                gestionadorT.modificarFechaContratacion(trabajador);
            }
            if(nombreAccion.equals("activo")){
                trabajador.setActivo(dato);
                gestionadorT.modificarActivo(trabajador);
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
