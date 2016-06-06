package joint.sistema.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import joint.sistema.gestion.GestionEstadistica;

/**
 *
 * @author jdiaz
 */
public class peorDesempenio extends HttpServlet {
    private GestionEstadistica ge;
    private void iniciarGestionEstadistica(){
        ge=new GestionEstadistica();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if(request.getParameter("periodo")!=null && request.getParameter("anio")!=null){
            Calendar fecha = new GregorianCalendar();
            int aniosistema = fecha.get(Calendar.YEAR);
            int mes = (fecha.get(Calendar.MONTH))+1;
            String periodo = request.getParameter("periodo");
            int anio=Integer.parseInt(request.getParameter("anio"));
            if(periodo.equals("Mensual")){
                iniciarGestionEstadistica();
                ArrayList idtrabajadores; 
                idtrabajadores=(ArrayList)ge.getPeorDesempenioGeneralMes(mes, anio);
                int i =0;
                while(i<idtrabajadores.size()){
                     System.out.println(idtrabajadores.get(i++).toString());
                }
            }
            if(periodo.equals("Anual")){
                iniciarGestionEstadistica();
                ge.getPeorDesempenioGeneralAnual(anio);
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
