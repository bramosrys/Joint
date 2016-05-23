<%-- 
    Document   : respuestaModificarTrabajador
    Created on : May 22, 2016, 7:23:25 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row" id="header">
    <div class="col-md-6">
        <h2 class="text-left">Modificar Trabajador</h2>
    </div>
    <div class="col-md-6">
        <button type="button" name="AdministrarPersonal" class="btn btn-primary pull-right regresar" onclick="regresar(this.name)">Regresar</button>
    </div>
</div>
<hr>
<div class="row" id="accion">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group has-feedback has-feedback-left">
                <label class="control-label">Número de empleado</label>
                <input type="text" class="form-control" placeholder="Número de Empleado" id="noEmpleado"/>
                <i class="form-control-feedback glyphicon glyphicon-tag"></i>
            </div>
        </div>
        <div class="col-md-6">
            <button type="button" name="submit" class="btn btn-primary btn-block registrar-btn" onclick="buscarMTrabajador()">Buscar Trabajador</button>
        </div>
    </div>
    <div class="row" id="respuestaModificacion">
        
    </div>
</div>