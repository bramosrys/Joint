<%-- 
    Document   : respuestaCrearViaje
    Created on : May 28, 2016, 2:31:26 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getAttribute("error")!=null){
        out.println("<div class='alert alert-danger'>");
        out.println("<strong>Atención!</strong> Hubo un error en la finalizacion del viaje");
        out.println("</div>");
    }else{
        out.println("<div class='alert alert-success'>");
        out.println("<strong>Correcto</strong> El registro se llevo a cabo correctamente");
        out.println("</div>");
    }
%>