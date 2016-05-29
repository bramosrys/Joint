<%-- 
    Document   : formularioEliminarTrabajador
    Created on : May 22, 2016, 4:44:30 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row" id="header">
    <div class="col-md-6">
        <h2 class="text-left">Finalizar Viaje</h2>
    </div>
    <div class="col-md-6">
        <button type="button" name="AdministrarViaje" class="btn btn-primary pull-right regresar" onclick="regresar(this.name)">Regresar</button>
    </div>
</div>
<hr>
<div class="row" id="accion">
    <div class="row">
        <div class='col-md-12'>
            <div class="row">
                <div class='col-md-6'>
                    <h3 class="text-center">Buscar viaje</h3><hr>
                    <div class='col-md-12'>
                        <div class="form-group has-feedback has-feedback-left">
                            <label class="control-label">Identificador de viaje</label>
                            <input type="text" class="form-control" placeholder="Introdusca el ID del viaje" id="idViaje" onkeyup="buscarViaje(this.value)"/>
                            <i class="form-control-feedback glyphicon glyphicon-user"></i>
                        </div>
                    </div>
                    <div class='col-md-12' id='respuestaViaje'>

                    </div>
                </div>
                <div class='col-md-6'>
                    <h3 class="text-center">Viajes pendientes por finalizar</h3><hr>
                    <div class="col-md-12" id="respuestaPendientes">
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row" id="formularioFinalizarViaje">
                
        </div>
    </div>
</div>
