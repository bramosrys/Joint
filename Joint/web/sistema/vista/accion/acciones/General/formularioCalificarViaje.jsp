<%-- 
    Document   : formularioEliminarTrabajador
    Created on : May 22, 2016, 4:44:30 PM
    Author     : jdiaz
--%>

<%@page import="joint.sistema.principal.Viaje"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row" id="header">
    <div class="col-md-6">
        <h2 class="text-left">Calificar Viaje</h2>
    </div>
    <div class="col-md-6">
        <button type="button" name="Calificar" class="btn btn-primary pull-right regresar" onclick="regresar(this.name)">Regresar</button>
    </div>
</div>
<hr>
<div class="row" id="accion">
    <div class="row">
        <div class='col-md-12'>
            <h3 class="text-center">Viajes por Calificar</h3><hr>
            <div class="row" id="respuestaViajesPendientes">
                <div class="col-md-12">
                    <%
                    if(request.getAttribute("viajes")!=null){
                          ArrayList viajes;
                          viajes=(ArrayList)request.getAttribute("viajes");
                          int i =0;
                          while(i<viajes.size()){
                               Viaje v=new Viaje();
                               v=(Viaje)viajes.get(i++);
                               out.println("<h5 class='text-center viaje-calificar' id='"+v.getCalificacion()+"' onclick='mostrarDatosViaje(this.id)'>");
                                out.println("Fecha de salida: <strong>"+v.getFechaSalida()+"</strong> Fecha de llegada: <strong>"+v.getFechaLlegada()+"</strong> Operador: <strong>"+v.getChofer().getNombre()+"</strong> Despachador: <strong>"+v.getDespachador().getNombre()+"</strong>");
                               out.println("</h5>");
                          }
                      }else{
                          out.println("Ocurrio un error al obtener los viajes pendientes por calificar");
                      }
                    %>
                </div>
                <div class="col-md-12"></div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h3 class="text-center">Datos del viaje</h3><hr>
            <div class="col-md-12" id="datosviaje">
                
            </div>
        </div>
        <div class="col-md-6">
            <h3 class="text-center">Calificar Viaje</h3><hr>
            <div class="col-md-12" id="formularioCalificar">
                
            </div>  
        </div>
    </div>
</div>
