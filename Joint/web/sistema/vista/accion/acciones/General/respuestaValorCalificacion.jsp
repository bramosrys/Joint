<%-- 
    Document   : respuestaValorCalificacion
    Created on : May 29, 2016, 8:03:16 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getParameter("valor")!=null){
        String valor=request.getParameter("valor");
        out.println("<div class='col-md-2'><h4 class='text-justify'><strong>Puntuación:</strong></h4></div>");
        if(valor.equals("uno")){
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<input type='hidden' value='1' id='valorCalificacion'/>");
        }
        if(valor.equals("dos")){
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<input type='hidden' value='2' id='valorCalificacion'/>");
        }
        if(valor.equals("tres")){
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<input type='hidden' value='3' id='valorCalificacion'/>");
        }
        if(valor.equals("cuatro")){
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<input type='hidden' value='4' id='valorCalificacion'/>");
        }
        if(valor.equals("cinco")){
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<div class='col-md-2'><img src='recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
            out.println("<input type='hidden' value='5' id='valorCalificacion'/>");
        }
    }
%>
