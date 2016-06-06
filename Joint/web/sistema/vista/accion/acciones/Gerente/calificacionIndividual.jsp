
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row" id="header">
    <div class="col-md-6">
        <h2 class="text-left">Calificación Individual</h2>
    </div>
    <div class="col-md-6">
        <button type="button" name="Estadisticas" class="btn btn-primary pull-right regresar" onclick="regresar(this.name)">Regresar</button>
    </div>
</div>
<hr>
<div class="row" id="accion">
    <div class="col-md-12">
        <div class="col-md-12">
            <div class="form-group has-feedback has-feedback-left">
                <label class="control-label">Número de empleado del operador</label>
                <input type="text" class="form-control" placeholder="Introdusca el número de empleado del operador" id="noEmpleadoOperador" onkeyup="buscarEmpleado(this.value)"/>
                <i class="form-control-feedback glyphicon glyphicon-user"></i>
            </div>
        </div>
    </div>
    <div class="col-md-12" id="respuestaBuscarEmpleado"></div>
    <div class="col-md-12" id="respuestaCalificacion"></div>
</div>
