/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package joint.sistema.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import joint.sistema.auxiliares.Cadena;
import joint.sistema.auxiliares.Convertir;
import joint.sistema.gestion.GestionadorTrabajador;
import joint.sistema.principal.Trabajador;

public class CargarModificarTrabajador extends HttpServlet {
    private GestionadorTrabajador gestionadorT;
    private Trabajador trabajador;

    private void iniciarGestionTrabajador(int noEmpleado){
        trabajador= new Trabajador(noEmpleado);
        gestionadorT = new GestionadorTrabajador(trabajador);
    }
    private void limpiar(){
        gestionadorT.destruirGestionador();
        System.gc();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if(request.getParameter("noEmpleado")!=null){
            Cadena c =new Cadena();
            int noEmpleado=Integer.parseInt(request.getParameter("noEmpleado"));
            System.out.println(noEmpleado);
            iniciarGestionTrabajador(noEmpleado);
            Convertir conv=new Convertir();
            ResultSet cargos;
            cargos=gestionadorT.getCargos();
            this.trabajador=gestionadorT.getInformacionTrabajador();
            request.setAttribute("noEmpleado",trabajador.getNoEmpleado());
            request.setAttribute("idTrabajador",trabajador.getIdTrabajador());
            System.out.println(trabajador.getIdTrabajador());
            request.setAttribute("registro", trabajador.getRegistro());
            request.setAttribute("nombre", trabajador.getNombre());
            request.setAttribute("fechaNacimiento", c.quitarSaltos(trabajador.getFechaNacimiento()));
            request.setAttribute("edad", trabajador.getEdad());
            request.setAttribute("correo", c.quitarSaltos(trabajador.getCorreo()));
            request.setAttribute("cargo", trabajador.getCargo());
            request.setAttribute("fechaContratacion", c.quitarSaltos(trabajador.getFechaContratacion()));
            request.setAttribute("activo", trabajador.getActivo());
            request.setAttribute("cargos",conv.ResultSetToArray(cargos));
            request.getRequestDispatcher("sistema/vista/accion/acciones/formularioModificarTrabajador.jsp").forward(request, response);
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
