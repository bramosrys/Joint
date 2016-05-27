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
            <h3 class="text-center">Seleccionar viaje</h3><hr>
            <div class="row">
                <div class='col-md-6'>
                    <div class="form-group has-feedback has-feedback-left">
                        <label class="control-label">ID del viaje</label>
                        <input type="text" class="form-control" placeholder="Introdusca el ID del viaje" id="idViaje"/>
                        <i class="form-control-feedback fa fa-male fa-fw"></i>
                    </div>
                </div>
                <div class='col-md-6' id='respuestaViaje'>
                    
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <h3 class="text-center">Logistica del viaje</h3><hr>
            <div class="form-group has-feedback has-feedback-left">
                <label class="control-label">Fecha de llegada</label>
                <input type="date" class="form-control" placeholder="Fecha de Llegada" id="fechallegada" min="2016-06-01" max="2017-01-01" />
                <i class="form-control-feedback glyphicon glyphicon-calendar"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left">
                <label class="control-label">Hora de entrada</label>
                <input type="time" class="form-control" placeholder="Hora de entrada" id="horaentrada"/>
                <i class="form-control-feedback glyphicon glyphicon-time"></i>
            </div>
        </div>
        <div class="col-md-6">
            <h3 class="text-center">Datos del viaje</h3><hr>
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Kilometraje</label>
                    <input type="text" class="form-control" placeholder="Kilometraje" id="kilometraje"/>
                    <i class="form-control-feedback fa  fa-fw fa-road fa-fw"></i>
                </div>
        </div>

        <div class="col-md-12">
            <button type="button" class="btn btn-primary btn-block">Finalizar Viaje</button>
        </div>
    </div>
</div>
