package joint.sistema.controlInterfaz;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import joint.sistema.Trabajador;
import joint.sistema.auxiliares.Edad;
import joint.sistema.gestion.GestionadorTrabajador;

/**
 *
 * @author jdiaz
 */
public class RegistrarTrabajador extends HttpServlet {
    private GestionadorTrabajador gestionadorT;
    private Trabajador trabajador;
    private int noEmpleado;

    private void iniciarGestionTrabajador(int noEmpleado,String nombre,int edad,String correo,String contrasenia,String fechaNacimiento){
        trabajador=new Trabajador(noEmpleado,nombre,edad,correo,contrasenia,fechaNacimiento);
        gestionadorT = new GestionadorTrabajador(trabajador);
    }
    private void limpiar(){
        gestionadorT.destruirGestionador();
        trabajador.destruirTrabajador();
        noEmpleado=0;
        System.gc();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("entre a registrar trabajador");
        String correo;
        String nombre;
        String contrasenia;
        String fechaNacimiento;
        int noEmpleado,años;
        Edad edad=new Edad();
        System.out.println("no empleado"+request.getParameter("noEmpleado"));
        System.out.println("nombre"+request.getParameter("nombre"));
        System.out.println("correo"+request.getParameter("correo"));
        System.out.println("contrasenia"+request.getParameter("contrasenia"));
        System.out.println("fechanacimiento"+request.getParameter("fechaNacimiento"));
        if(request.getParameter("noEmpleado")!=null && request.getParameter("nombre")!=null && request.getParameter("correo")!=null &&
                request.getParameter("contrasenia")!=null && request.getParameter("fechaNacimiento")!=null){
            System.out.println("entre al if de registrar");
            noEmpleado=Integer.parseInt(request.getParameter("noEmpleado"));
            nombre=request.getParameter("nombre");
            correo=request.getParameter("correo");
            contrasenia=request.getParameter("contrasenia");
            fechaNacimiento=request.getParameter("fechaNacimiento");
            años=edad.calcularEdad(fechaNacimiento);
            iniciarGestionTrabajador(noEmpleado,nombre,años,correo,contrasenia,fechaNacimiento);
            gestionadorT.registrarTrabajador(trabajador);
            try (PrintWriter out = response.getWriter()) {
                    out.println("<div class='alert alert-success'>");
                        out.println("<strong>¡Registro realizado exitosamente! </strong> Ahora puede iniciar sesion");
                    out.println("</div>");
            }
            limpiar();
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
