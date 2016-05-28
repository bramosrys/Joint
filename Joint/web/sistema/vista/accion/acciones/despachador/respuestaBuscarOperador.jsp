<%-- 
    Document   : respuestaBuscarOperador
    Created on : May 28, 2016, 11:09:41 AM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getAttribute("error")!=null){
        out.println("<div class='alert alert-warning'>");
        out.println("<strong>Atención!</strong> El trabajador no se encuentra, o no es un operador");
        out.println("</div>");
    }else{
        out.println("<div class='col-md-8 alert alert-success'>");
            out.println("<strong>Empleado Encontrado </strong> Complete el formulario");
        out.println("</div>");
        out.println("<div class='col-md-4'>");
            out.println("<button type='button' class='btn btn-success btn-block center-btn' onclick=mostrarFormularioCrearViaje()>Ver Formulario</button>");
        out.println("</div>");
    }
%>