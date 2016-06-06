<%-- 
    Document   : respuestaBuscarOperador
    Created on : May 28, 2016, 11:09:41 AM
    Author     : jdiaz
--%>

<%@page import="joint.sistema.principal.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getAttribute("trabajador")!=null && request.getAttribute("promedio")!=null){
        int promedio=(Integer)request.getAttribute("promedio");
        String valor="";
        if(promedio<=1){
            valor="uno";
        }
        if(promedio<=2){
            valor="dos";
        }
        if(promedio<=3){
            valor="tres";
        }
        if(promedio<=4){
            valor="cuatro";
        }
        if(promedio<=5){
            valor="cinco";
        }
        Trabajador t=(Trabajador)request.getAttribute("trabajador");
        out.println("<div class='col-md-12'>");
            out.println("<h3 class='text-center'>"+t.getNombre()+"</h3><hr>");
            out.println("<div class='col-md-3'>");
                out.println("<div class='col-md-12' id='imagenUsuario'>");
                    out.println("<a  class='thumbnail center-block'>");
                      out.println("<img src='../../../sistema/imagenesUsuario/userImage.png' class='img-responsive'>");
                    out.println("</a>");
                  out.println("</div>");
            out.println("</div>");
            out.println("<div class='col-md-6'>");
                out.println("<h4 class='text-justify'><strong>Cargo: </strong>"+t.getCargo()+"</h4>");
                out.println("<h4 class='text-justify'><strong>Fecha de nacimiento: </strong>"+t.getIdTrabajador()+"</h4>");
                out.println("<h4 class='text-justify'><strong>Edad: </strong>"+t.getEdad()+"</h4>");
                out.println("<h4 class='text-justify'><strong>Cargo: </strong>"+t.getCorreo()+"</h4>");
                out.println("<h4 class='text-justify'><strong>Fecha de contratación: </strong>"+t.getFechaContratacion()+"</h4>");
            out.println("</div>");
            out.println("<div class='col-md-3'>");
                out.println("<h3 class='text-center'>Calificación</h3><hr>");
                if(valor.equals("uno")){
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                }
                if(valor.equals("dos")){
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                }
                if(valor.equals("tres")){
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                }
                if(valor.equals("cuatro")){
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                }
                if(valor.equals("cinco")){
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                    out.println("<div class='col-md-2'><img src='../../../recursos/imagenes/inicio/general/star-1.png' class='img-responsive star center-block'></div>");
                }
            out.println("</div>");
        out.println("</div>");
    }else{
        out.println("<h2 class='text-center'>No se pudo recuperar información del trabajador</h2>");
    }
%>
