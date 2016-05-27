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
                        <label class="control-label">Nombre del operador</label>
                        <input type="text" class="form-control" placeholder="Introdusca el nombre del operador" id="nombreOperador"/>
                        <i class="form-control-feedback fa fa-male fa-fw"></i>
                    </div>
                    <div class="form-group has-feedback has-feedback-left">
                        <label class="control-label">Número de empleado del operador</label>
                        <input type="text" class="form-control" placeholder="Introdusca el número de empleado del operador" id="noEmpleadoOperador"/>
                        <i class="form-control-feedback glyphicon glyphicon-user"></i>
                    </div>
                </div>
                <div class='col-md-6' id='respuestaOperador'>
                    
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <h3 class="text-center">Logistica del viaje</h3><hr>
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Fecha de salida</label>
                    <input type="date" class="form-control" placeholder="Fecha de salida" id="fechasalida" min="2016-06-01" max="2017-01-01" />
                    <i class="form-control-feedback glyphicon glyphicon-calendar"></i>
                </div>


                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Hora de salida</label>
                    <input type="time" class="form-control" placeholder="Hora de salida" id="horasalida"/>
                    <i class="form-control-feedback glyphicon glyphicon-time"></i>
                </div>
            
        </div>
        <div class="col-md-6">
            <h3 class="text-center">Datos del destino</h3><hr>

                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Calle</label>
                    <input type="text" class="form-control" placeholder="Calle" id="calle"/>
                    <i class="form-control-feedback fa  fa-fw fa-road fa-fw"></i>
                </div>
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Número</label>
                    <input type="text" class="form-control" placeholder="No Interior:   No Exterior:" id="numero"/>
                    <i class="form-control-feedback fa fa-map-pin fa-fw"></i>
                </div>
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Colonia</label>
                    <input type="text" class="form-control" placeholder="Colonia" id="colonia"/>
                    <i class="form-control-feedback fa fa-street-view fa-fw"></i>
                </div>
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Delegación/Municipio</label>
                    <input type="text" class="form-control" placeholder="Delegación/Municipio" id="delegacion"/>
                    <i class="form-control-feedback fa fa-map-signs fa-fw"></i>
                </div>
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Estado</label>
                    <input type="text" class="form-control" placeholder="Estado" id="estado"/>
                    <i class="form-control-feedback fa fa-map fa-fw"></i>
                </div>
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Código Postal</label>
                    <input type="text" class="form-control" placeholder="Código Postal" id="cp"/>
                    <i class="form-control-feedback fa fa-map-o fa-fw"></i>
                </div>

        </div>
        <!--<form role="form"> 
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
        </form>-->
        <div class="col-md-12">
            <button type="button" class="btn btn-primary btn-block">Crear Viaje</button>
        </div>
    </div>
</div>
