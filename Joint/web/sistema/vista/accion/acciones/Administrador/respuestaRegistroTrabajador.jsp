<%-- 
    Document   : respuestaRegistroTrabajador
    Created on : May 22, 2016, 12:08:51 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
    if(request.getAttribute("existe")!=null){
        out.println("<div class='col-md-8'>");
            out.println("<div class='alert alert-warning'>");
                out.println("<strong>¡El trabajador ya esta en el sistema!</strong>");
            out.println("</div>");
        out.println("</div>");
        out.println("<div class='col-md-4'>");
            out.println("<button type='button' class='btn btn-info btn-block center-btn' onclick='formularioTrabajador()'>Registrar Otro Trabajador</button>");
        out.println(" </div>");
    out.println(" </div>");
    }else{
    out.println("<div class='col-md-8'>");
            out.println("<div class='alert alert-success'>");
                out.println("<strong>¡Registro de trabajador exitoso!</strong>");
            out.println("</div>");
        out.println("</div>");
        out.println("<div class='col-md-4'>");
            out.println("<button type='button' class='btn btn-info btn-block center-btn' onclick='formularioTrabajador()'>Registrar Otro Trabajador</button>");
        out.println(" </div>");
    out.println(" </div>");
    }
    %>
    