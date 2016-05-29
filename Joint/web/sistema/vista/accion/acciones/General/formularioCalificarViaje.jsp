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
                               out.println("<h5 class='text-center' value='"+v.getCalificacion()+"' onclick='mostrarFormularioCalificarViaje(this.value)'>");
                                out.println("Hora de salida: <strong>"+v.getFechaSalida()+"</strong> Hora de Salida: <strong>"+v.getHoraSalida()+"</strong> Operador: <strong>"+v.getChofer().getNombre()+"</strong>");
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
        </div>
        <div class="col-md-6">
            <h3 class="text-center">Calificar Viaje</h3><hr>
            <div class="row">
                <div class="col-md-12">
                    
                </div>
                <div class="col-md-12">
                        <label class="control-label">Comentarios</label>
                        <textarea class="form-control " rows="3" style="resize:none"></textarea>     
                </div>
            </div>
        </div>
    </div>
</div>
