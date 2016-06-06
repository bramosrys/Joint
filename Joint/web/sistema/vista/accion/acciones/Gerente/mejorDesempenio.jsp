<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row" id="header">
    <div class="col-md-6">
        <h2 class="text-left">El mejor desempeño laboral</h2>
    </div>
    <div class="col-md-6">
        <button type="button" name="estadisticas" class="btn btn-primary pull-right regresar" onclick="regresar(this.name)">Regresar</button>
    </div>
</div>
<hr>
<div class="row" id="accion">
    <div class="col-md-12">
        <div class="col-md-5">
            <h3 class="text-left">¿En qué periodo?</h3>
             <select class="form-control" id="periodo">
                <option>Mensual</option>
                <option>Trimestral</option>
                <option>Semestral</option>
                <option>Anual</option>
            </select>
        </div>
        <div class="col-md-5">
            <h3 class="text-left">Año</h3>
            <select class="form-control" id="anio">
                <option>2016</option>
            </select>
        </div>
        <div class="col-md-2">
            <br><br><br>
            <button type="button" class="btn btn-success btn-block" onclick="mejorDesempenio()">Buscar</button>
        </div>
    </div>
    <div class="col-md-12" id="respuesta-desempenio"></div>
</div>
