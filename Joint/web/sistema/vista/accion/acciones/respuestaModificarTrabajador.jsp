<%-- 
    Document   : respuestaModificarTrabajador
    Created on : May 23, 2016, 11:40:14 AM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String existe, error;
    if(request.getAttribute("existe")!=null){
        existe=(String)request.getAttribute("existe");
        if(existe.equals("false")){//no existia
            out.println("<div class='alert alert-danger'>");
            out.println("<strong>Atención!</strong> El trabajador no se encuentra en el sistema o aun no se ha registrado");
            out.println("</div>");
        }
    }
    if(request.getAttribute("error")!=null){
        error=(String)request.getAttribute("error");
        if(error.equals("false")){//no hay error operacion exitosa
            out.println("<div class='alert alert-success'>");
            out.println("<strong>OK!</strong> Información modificada satisfactoriamente");
            out.println("</div>");
        }else{//error en la operacion
            out.println("<div class='alert alert-danger'>");
            out.println("<strong>Atención!</strong> Ocurrio un error en la modificación de la información");
            out.println("</div>");
        }
    }
%>
