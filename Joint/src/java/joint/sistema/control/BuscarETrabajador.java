/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package joint.sistema.control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import joint.sistema.gestion.GestionadorTrabajador;
import joint.sistema.principal.Trabajador;

/**
 *
 * @author jdiaz
 */
public class BuscarETrabajador extends HttpServlet {
    private GestionadorTrabajador gestionadorT;
    private Trabajador trabajador;
    private int noEmpleado;

    private void iniciarGestionTrabajador(int noEmpleado){
        trabajador=new Trabajador(noEmpleado);
        gestionadorT = new GestionadorTrabajador(trabajador);
    }   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if(request.getParameter("noEmpleado")!=null){
            noEmpleado = Integer.parseInt(request.getParameter("noEmpleado"));
            iniciarGestionTrabajador(noEmpleado);
            
            if(gestionadorT.existeTrabajador()&&gestionadorT.estaRegistrado()&&gestionadorT.estaActivo()){
               if(gestionadorT.esOperador()){
                   int idOperador = gestionadorT.getIdTrabajador(trabajador);
                   request.setAttribute("idOperador",idOperador);
                   request.getRequestDispatcher("sistema/vista/accion/acciones/Gerente/respuestaBuscarOperador.jsp").forward(request, response);
               }else{
                    if(gestionadorT.esDespachador()){
                        int idOperador = gestionadorT.getIdTrabajador(trabajador);
                        request.setAttribute("idOperador",idOperador);
                        request.getRequestDispatcher("sistema/vista/accion/acciones/Gerente/respuestaBuscarOperador.jsp").forward(request, response);
                    }else{
                       request.setAttribute("error","false");
                       request.getRequestDispatcher("sistema/vista/accion/acciones/Gerente/respuestaBuscarOperador.jsp").forward(request, response);
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
