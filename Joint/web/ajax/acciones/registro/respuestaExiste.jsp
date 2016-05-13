<%-- 
    Document   : respuestaExiste
    Created on : May 12, 2016, 11:49:32 PM
    Author     : jdiaz
--%>

<%@page import="joint.sistema.gestion.GestionadorTrabajador"%>
<%@page import="joint.sistema.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    if(request.getParameter("noEmpleado")!=null){
       String noEmpleado=request.getParameter("noEmpleado");
       int noEmp =Integer.parseInt(noEmpleado);
       out.println("<div class='col-md-8 alert alert-success'>");
            out.println("<strong>Empleado Encontrado </strong>");
        out.println("</div>");
        out.println("<div class='col-md-4 btn-registro'>");
            out.println("<button type='button' class='btn btn-success btn-block ' value='"+noEmp+"'onclick=registro(this.value)>Registrarme</button>");
        out.println("</div>");   
    }
%>