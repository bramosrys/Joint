<%-- 
    Document   : elegirColor
    Created on : May 15, 2016, 11:10:09 PM
    Author     : jdiaz
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String noEmpleado=(String)session.getAttribute("noEmpleado");
    Object colores[][];
    if(request.getAttribute("colores")!=null){
        colores=(Object[][])request.getAttribute("colores");
        //Recorremos el array multidimensional
    }else{
        colores=null;
    }
%>
    <h2 class="text-left">Elige tu color preferido</h2><hr>
    <div clas="col-md-12">
        <% 
            String color;
            String nombre;
            out.println("<input type='hidden' id='noEmpleado' value='"+noEmpleado+"'>");
            for (int i=0;i<colores.length;i++){
                for(int j=0;j<1;j++){
                    nombre=String.valueOf(colores[i][j]);
                    color=String.valueOf(colores[i][j+1]);
                    out.println("<div class='col-md-2'>");
                        out.println("<h4 class='text-center'>"+nombre+"</h4>");
                        out.println("<button class='btn btn-default btn-block btn-color' value="+color+" style='background-color:#"+color+";' onclick='guardarColor(this.value)'></button>");
                    out.println("</div>");
                }
            }
        %>
    </div>
    <div class="col-md-12" id="respuesta-color">
        
    </div>
    <form method="POST" action="GuardarPrimerInicio">
        <%out.println("<input type='hidden' id='noEmpleado' name='noEmpleado' value='"+noEmpleado+"'>"); %>
        <button type="submit" name='submit' class='btn btn-default btn-block'>Terminar</button>
    </form>
    