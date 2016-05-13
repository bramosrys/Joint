<%-- 
    Document   : respuestaExiste
    Created on : May 12, 2016, 11:49:32 PM
    Author     : jdiaz
--%>

<%@page import="joint.sistema.gestion.GestionadorTrabajador"%>
<%@page import="joint.sistema.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String noEmp= request.getParameter("noEmpleado");

    Trabajador trabajador=new Trabajador(Integer.parseInt(noEmp));
    GestionadorTrabajador gTrabajador= new GestionadorTrabajador(trabajador);
    
    if(gTrabajador.existeTrabajador()){
        out.println("<div class='alert alert-success'>");
        out.println("<strong>Empleado Encontrado <i class='icon-thumbs-up'></i></strong>");
        out.println("</div>");
    }else{
        out.println("<div class='alert alert-warning'>");
            out.println("<strong>Número de empleado no encontrado  </strong>Contacte con el administrador");
        out.println("</div>");
    }
    
%>