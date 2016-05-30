<%-- 
    Document   : formularioCalificar
    Created on : May 29, 2016, 7:55:49 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <div class="col-md-12" id="respuestavalor">
        <div class="col-md-2"><h4 class="text-justify"><strong>Puntuación:</strong></h4></div>
        <div class="col-md-2"><img src='recursos/imagenes/inicio/general/star.png' class='img-responsive star center-block' id="uno" onclick="setValorCalificacion(this.id)"></div>
        <div class="col-md-2"><img src='recursos/imagenes/inicio/general/star.png' class='img-responsive star center-block' id="dos" onclick="setValorCalificacion(this.id)"></div>
        <div class="col-md-2"><img src='recursos/imagenes/inicio/general/star.png' class='img-responsive star center-block' id="tres" onclick="setValorCalificacion(this.id)"></div>
        <div class="col-md-2"><img src='recursos/imagenes/inicio/general/star.png' class='img-responsive star center-block' id="cuatro" onclick="setValorCalificacion(this.id)"></div>
        <div class="col-md-2"><img src='recursos/imagenes/inicio/general/star.png' class='img-responsive star center-block' id="cinco" onclick="setValorCalificacion(this.id)"></div>
    </div>
</div>
<div class="col-md-12">
        <h4 class="control-label">Comentarios</h4>
        <textarea class="form-control " rows="3" style="resize:none" id="comentarios"></textarea>     
</div>
<div class="col-md-12">
    <br><br><button type="button" class="btn btn-primary btn-block" onclick="calificar()">Terminar</button>
</div>
