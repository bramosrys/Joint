<%-- 
    Document   : respuestaBuscarOperador
    Created on : May 28, 2016, 11:09:41 AM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getAttribute("error")!=null){
        out.println("<div class='alert alert-warning'>");
        out.println("<strong>Atención!</strong> El Viaje no se ha encontrado o ya se encuentra finalizado");
        out.println("</div>");
    }else{
        if(request.getAttribute("idViaje")!=null){
        out.println("<div class='col-md-8 alert alert-success'>");
            out.println("<input type='hidden' value='"+request.getAttribute("idViaje")+"' id='idViaje'/>");
            out.println("<strong>Viaje Encontrado </strong> Complete el formulario");
        out.println("</div>");
        out.println("<div class='col-md-4'>");
            out.println("<button type='button' class='btn btn-success btn-block center-btn' onclick=mostrarFormularioFinalizarViaje()>Ver Formulario</button>");
        out.println("</div>");
        }
        
    }
%>