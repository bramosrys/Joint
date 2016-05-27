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
        <form role="form"> 
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Nombre Completo</label>
              <input type="hidden" id="noEmpleado" value=""/>
              <input type="text" class="form-control" placeholder="Nombre Completo" id="nombre"/>
              <i class="form-control-feedback glyphicon glyphicon-user"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Fecha de Nacimiento</label>
              <input type="date" class="form-control" placeholder="Fecha de nacimiento" id="fechaNacimiento" min="1950-01-01" max="1998-01-01" />
              <i class="form-control-feedback glyphicon glyphicon-time"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Correo</label>
              <input type="email" class="form-control" value="" id="email"/>
              <i class="form-control-feedback glyphicon glyphicon-envelope"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Contraseña</label>
              <input type="password" class="form-control" placeholder="Contraseña" id="contrasenia" value="" onkeyup="validarContrasenia(this.value)"/>
              <i class="form-control-feedback glyphicon glyphicon-console"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left" id="pass2">
            </div>
            <button type="button" value="Input" name='submit' class='btn btn-primary btn-block' onclick="validarRegistro()"><i class='glyphicon glyphicon-triangle-right'></i>Ok</button>
        </form>
    </div>
</div>
