<%-- 
    Document   : formularioEliminarTrabajador
    Created on : May 22, 2016, 4:44:30 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row" id="header">
    <div class="col-md-6">
        <h2 class="text-left">Crear Viaje</h2>
    </div>
    <div class="col-md-6">
        <button type="button" name="AdministrarViaje" class="btn btn-primary pull-right regresar" onclick="regresar(this.name)">Regresar</button>
    </div>
</div>
<hr>
<div class="row" id="accion">
    <div class="row">
        <div class='col-md-12'>
            <h3 class="text-center">Operador designado</h3><hr>
            <div class="row">
                <div class='col-md-6'>
                    <div class="form-group has-feedback has-feedback-left">
                        <label class="control-label">Número de empleado del operador</label>
                        <input type="text" class="form-control" placeholder="Introdusca el número de empleado del operador" id="noEmpleadoOperador" onkeyup="buscarOperador(this.value)"/>
                        <i class="form-control-feedback glyphicon glyphicon-user"></i>
                    </div>
                </div>
                <div class='col-md-6' id='respuestaOperador'>
                    
                </div>
            </div>
            <div class="row" id="formularioCrearViaje">
                
            </div>
        </div>
        
    </div>
</div>
