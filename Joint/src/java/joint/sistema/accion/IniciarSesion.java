package joint.sistema.accion;



import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import joint.sistema.principal.Trabajador;
import joint.sistema.gestion.GestionadorTrabajador;

/**
 *
 * @author jdiaz
 */
@WebServlet(name = "ControlIndex", urlPatterns = {"/ControlIndex"})
public class IniciarSesion extends HttpServlet {
    
    private GestionadorTrabajador gestionadorT;
    private Trabajador trabajador;
    private int noEmpleado;
    private int contador;
    private boolean existeUsuario;
    private String robot;
    
    
    
    private void iniciarGestionTrabajador(int noEmpleado){
        trabajador=new Trabajador(noEmpleado);
        gestionadorT = new GestionadorTrabajador(trabajador);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        if(request.getParameter("g-recaptcha-response")!=null){
            System.out.println("entre a robot");
            robot = request.getParameter("g-recaptcha-response");
            System.out.println("soy robot"+robot);
            if(robot.equals("")){
                System.out.println("No se valido Robot");
                String estadoSesion="robot";
                request.setAttribute("sesion", estadoSesion);
                RequestDispatcher a = request.getRequestDispatcher("index.jsp");
                a.forward(request, response);
            }else{
                contador=0;
                String intento=String.valueOf(contador);
                String estadoSesion="intento";
                request.setAttribute("sesion", estadoSesion);
                request.setAttribute("intento", intento);
                RequestDispatcher a = request.getRequestDispatcher("index.jsp");
                a.forward(request, response);
            }
        }

        if(request.getParameter("noEmpleado")!=null){
            noEmpleado = Integer.parseInt(request.getParameter("noEmpleado"));
            iniciarGestionTrabajador(noEmpleado);
            
            existeUsuario=gestionadorT.existeTrabajador();
            if(existeUsuario){
                System.out.println("entre a iniciar existe");
                if(request.getParameter("contrasenia")!=null){
                    System.out.println("entre a iniciar contraseña");
                    HttpSession sesion = request.getSession();
                    String passFormulario,passBD;
                    passFormulario = request.getParameter("contrasenia");
                    trabajador=gestionadorT.getContrasenia();
                    passBD=trabajador.getContrasenia();
                    if(passFormulario.equals(passBD)){
                        trabajador=gestionadorT.getNombre();
                        sesion.setAttribute("sesionActual", request.getParameter("noEmpleado"));
                        sesion.setAttribute("nombre", trabajador.getNombre());
                        String estado =gestionadorT.getEstadoInicial();
                        if(sesion.getAttribute("sesionActual") == null){
                            RequestDispatcher a = request.getRequestDispatcher("inicio.jsp");
                            a.forward(request, response);
                        }else{
                            if(estado.equals("false")){
                            request.getRequestDispatcher("primerInicio.jsp").forward(request, response);
                            }else{
                                RequestDispatcher a = request.getRequestDispatcher("inicio.jsp");
                                a.forward(request, response);
                            }
                        }
                        
                    }else{
                        contador = Integer.parseInt(request.getParameter("contador"));
                        contador++;
                        String intento=String.valueOf(contador);
                        String estadoSesion="intento";
                        request.setAttribute("sesion", estadoSesion);
                        request.setAttribute("intento", intento);
                        RequestDispatcher a = request.getRequestDispatcher("index.jsp");
                        a.forward(request, response);
                    }
                }   
            }else{
                if(request.getParameter("contador")!=null){
                    contador = Integer.parseInt(request.getParameter("contador"));
                    contador++;
                    String intento=String.valueOf(contador);
                    String estadoSesion="intento";
                    request.setAttribute("sesion", estadoSesion);
                    request.setAttribute("intento", intento);
                    RequestDispatcher a = request.getRequestDispatcher("index.jsp");
                    a.forward(request, response);
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
