<%-- 
    Document   : respuestaCrearAviso
    Created on : Jun 6, 2016, 11:10:04 AM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getAttribute("error")==null){
        out.println("<div class='alert alert-success'>");
        out.println("<strong>Correcto</strong> El registro se llevo a cabo correctamente");
        out.println("</div>");
        
    }else{
        out.println("<div class='alert alert-danger'>");
        out.println("<strong>Atención!</strong> Hubo un error en la creación del aviso");
        out.println("</div>");
    }
%>