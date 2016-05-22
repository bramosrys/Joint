<%-- 
    Document   : respuestaRegistrarTrabajador
    Created on : May 22, 2016, 11:04:17 AM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Object cargos[][];
    if(request.getAttribute("cargos")!=null){
        cargos=(Object[][])request.getAttribute("cargos");
    }else{
        cargos=null;
    }
%>
<div class="row" id="header">
    <div class="col-md-6">
        <h2 class="text-left">Registrar Trabajador</h2>
    </div>
    <div class="col-md-6">
        <button type="button" name="AdministrarPersonal" class="btn btn-primary pull-right regresar" onclick="regresar(this.name)">Regresar</button>
    </div>
</div>
<hr>
<div class="row" id="accion">
    <div class="row">
        <div class="col-md-4">
            <div class="form-group has-feedback has-feedback-left">
                <label class="control-label">Número de empleado</label>
                <input type="text" class="form-control" placeholder="Número de Empleado" id="noEmpleado"/>
                <i class="form-control-feedback glyphicon glyphicon-tag"></i>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group has-feedback has-feedback-left">
                <label class="control-label">Cargo</label>
                <select class="form-control" id="cargo">
                    <% 
                        for (int i=0;i<cargos.length;i++){
                            String cargo;
                            cargo=String.valueOf(cargos[i][0]);
                            out.println("<option>"+cargo+"</option>");
                        }
                    %>
                </select>
            </div>
        </div>
        <div class="col-md-4">
            <button type="button" name="submit" class="btn btn-default btn-block registrar-btn" onclick="registrarTrabajador()">Registrar Trabajador</button>
        </div>
    </div>
    <div class="row" id="respuestaRegistro">
        
    </div>
</div>
