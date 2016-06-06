<%-- 
    Document   : formularioEliminarTrabajador
    Created on : May 22, 2016, 4:44:30 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row" id="header">
    <div class="col-md-6">
        <h2 class="text-left">Hacer aviso</h2>
    </div>
    <div class="col-md-6">
        <button type="button" name="AdministrarAvisos" class="btn btn-primary pull-right regresar" onclick="regresar(this.name)">Regresar</button>
    </div>
</div>
<hr>
<div class="row" id="accion">
    <div class="col-md-4">
        <h4 class="text-center">Imagen</h4><hr>
        <div class="col-md-12" id="imagenPublicacion">
            <a  class="thumbnail center-block">
              <img src="../../../recursos/imagenes/inicio/gerente/picture.png" class="img-responsive center-block" alt="...">
            </a>
            <button type="button" class="btn btn-info btn-block">Seleccionar Imagen</button>
        </div>
        <div class="col-md-12" id="respuesta-imagen">

        </div>
    </div>
    <div class="col-md-8">
        <h4 class="text-center">Titulo del aviso</h4><hr>
        <div class="col-md-12">
            <div class="form-group has-feedback has-feedback-left">
                <input type="text" class="form-control" placeholder="Titulo de aviso" id="titulo"/>
                <i class="form-control-feedback glyphicon glyphicon-tags"></i>
            </div>
        </div>
        <h4 class="text-center">Contenido</h4><hr>
        <div class="col-md-12">
            <textarea class="form-control " rows="5" style="resize:none" id="contenido"></textarea> 
        </div>
    </div>
    <div class="col-md-12">
        <br>
        <button type="button" name="CrearPublicacion" class="btn btn-primary btn-block" onclick="crearAviso()">Crear Aviso</button>
    </div>
    <div class="col-md-12" id="respuestaaviso">
        
    </div>
</div>
