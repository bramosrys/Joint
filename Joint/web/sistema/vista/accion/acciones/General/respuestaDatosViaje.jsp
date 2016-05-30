<%-- 
    Document   : respuestaDatosViaje
    Created on : May 29, 2016, 6:28:45 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String viaje[];
    if(request.getAttribute("viaje")!=null && request.getAttribute("idCalificacion")!=null){
        viaje=(String[])request.getAttribute("viaje");
        out.println("<div class='col-md-12'>");
            out.println("<h4 class='text-justify' id='"+viaje[0]+"'>ID del Viaje: <strong>"+viaje[0]+"</strong></h4>");
            out.println("<h4 class='text-justify'>Fecha de Salida: <strong>"+viaje[1]+"</strong></h4>");
            out.println("<h4 class='text-justify'>Fecha de llegada: <strong>"+viaje[2]+"</strong></h4>");
            out.println("<h4 class='text-justify'>Kilometraje: <strong>"+viaje[3]+"</strong></h4>");
            out.println("<h4 class='text-justify'>Hora de salida: <strong>"+viaje[4]+"</strong></h4>");
            out.println("<h4 class='text-justify'>Hora de entrada: <strong>"+viaje[5]+"</strong></h4>");
            out.println("<h4 class='text-justify'>Operador: <strong>"+viaje[6]+"</strong></h4>");
            out.println("<h4 class='text-justify'>Despachador: <strong>"+viaje[7]+"</strong></h4>");
            out.println("<input type='hidden' value='"+request.getAttribute("idCalificacion")+"' id='idCalificacion'>");
        out.println("</div>");
        out.println("<div class='col-md-12'>");
        out.println("<br>");
            out.println("<button type='button' class='btn btn-block btn-default' onclick='mostrarFormularioCalificar()'>Calificar</button>");
        out.println("</div>");
    }else{
        out.println("<h3 class='text-center'>Error al obtener datos del viaje</h3>");
    }
%>
