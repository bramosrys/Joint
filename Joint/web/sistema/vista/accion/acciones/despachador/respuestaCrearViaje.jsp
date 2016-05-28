<%-- 
    Document   : respuestaCrearViaje
    Created on : May 28, 2016, 2:31:26 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getAttribute("error")!=null){
        out.println("<div class='alert alert-danger'>");
        out.println("<strong>Atención!</strong> Hubo un error en el registro del viaje");
        out.println("</div>");
    }else{
        if(request.getAttribute("idViaje")!=null){
            out.println("<div class='alert alert-success'>");
            out.println("<strong>Correcto</strong> El registro se llevo a cabo correctamente");
            out.println("</div>");
            out.println("<div class='alert alert-info'>");
            out.println("<strong>El viaje se ha creado con el ID"+request.getAttribute("idViaje")+"</strong>");
            out.println("</div>");
        }
        
    }
%>