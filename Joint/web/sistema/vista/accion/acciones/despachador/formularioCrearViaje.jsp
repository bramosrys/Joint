<%-- 
    Document   : formularioCrearViaje
    Created on : May 28, 2016, 11:10:00 AM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <label class="control-label">Estado</label>
                <select name="estado" id="estado" class="form-control">
                    <option value="Aguascalientes">Aguascalientes</option>
                    <option value="Baja California">Baja California</option>
                    <option value="Baja California Sur">Baja California Sur</option>
                    <option value="Campeche">Campeche</option>
                    <option value="Chiapas">Chiapas</option>
                    <option value="Chihuahua">Chihuahua</option>
                    <option value="Coahuila">Coahuila</option>
                    <option value="Colima">Colima</option>
                    <option value="Distrito Federal">Distrito Federal</option>
                    <option value="Durango">Durango</option>
                    <option value="Estado de México">Estado de México</option>
                    <option value="Guanajuato">Guanajuato</option>
                    <option value="Guerrero">Guerrero</option>
                    <option value="Hidalgo">Hidalgo</option>
                    <option value="Jalisco">Jalisco</option>
                    <option value="Michoacán">Michoacán</option>
                    <option value="Morelos">Morelos</option>
                    <option value="Nayarit">Nayarit</option>
                    <option value="Nuevo León">Nuevo León</option>
                    <option value="Oaxaca">Oaxaca</option>
                    <option value="Puebla">Puebla</option>
                    <option value="Querétaro">Querétaro</option>
                    <option value="Quintana Roo">Quintana Roo</option>
                    <option value="San Luis Potosí">San Luis Potosí</option>
                    <option value="Sinaloa">Sinaloa</option>
                    <option value="Sonora">Sonora</option>
                    <option value="Tabasco">Tabasco</option>
                    <option value="Tamaulipas">Tamaulipas</option>
                    <option value="Tlaxcala">Tlaxcala</option>
                    <option value="Veracruz">Veracruz</option>
                    <option value="Yucatán">Yucatán</option>
                    <option value="Zacatecas">Zacatecas</option>
                </select>
                <i class="form-control-feedback fa fa-map fa-fw"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left">
                <label class="control-label">Delegación/Municipio</label>
                <input type="text" class="form-control" placeholder="Delegación/Municipio" id="delegacion"/>
                <i class="form-control-feedback fa fa-map-signs fa-fw"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left">
                <label class="control-label">Código Postal</label>
                <input type="text" class="form-control" placeholder="Código Postal" id="cp"/>
                <i class="form-control-feedback fa fa-map-o fa-fw"></i>
            </div>

    </div>
    <div class="col-md-12">
        <button type="button" class="btn btn-primary btn-block" onclick="crearViaje()">Crear Viaje</button>
    </div>