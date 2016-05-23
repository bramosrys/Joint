<%-- 
    Document   : formularioModificarTrabajador
    Created on : May 22, 2016, 8:39:08 PM
    Author     : jdiaz
--%>
<%
    if(request.getParameter("existe")!=null){//El Trabajador no existia o no estaba registrad
        
    }
    Object cargos[][];
    if(request.getParameter("cargos")!=null){
        cargos=(Object[][])request.getAttribute("cargos");
    }else{
        cargos=null;
    }
    String idTrabajador=String.valueOf(request.getAttribute("idTrabajador"));
    String noEmpleado=String.valueOf(request.getAttribute("noEmpleado"));
    String registro=(String)request.getAttribute("registro");
    String nombre=(String)request.getAttribute("nombre");
    String fechaNacimiento=(String)request.getAttribute("fechaNacimiento");
    String edad=String.valueOf(request.getAttribute("edad"));
    String correo=(String)request.getAttribute("correo");
    String cargo=(String)request.getAttribute("cargo");
    String fechaContratacion=(String)request.getAttribute("fechaContratacion");
    String activo=(String)request.getAttribute("activo");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <h2 class="text-center">¿Que necesitas cambiar?</h2><hr>
    <div class="col-md-12" id="respuestaModificado">
        
    </div>
    <div class="col-md-12">
        <h4 class="">ID del trabajador: <%out.println(idTrabajador);%></h4>
        <div class="row">
            <div class="col-md-9">
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Número de empleado</label>
                    <input type='hidden' value='<%out.println(idTrabajador);%>' id='idTrabajador'>
                    <input type="text" value="<%out.println(noEmpleado);%>" class="form-control" id="noEmp"/>
                    <i class="form-control-feedback glyphicon glyphicon-user"></i>
                </div>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-success btn-block registrar-btn" name="noEmp" onclick="modificar(this.name)">Modificar</button>
            </div>
        </div>
            
        <!--<div class="row">
            <div class="col-md-9">
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Registrado en el sistema</label>
                    <input type="text" value="<%//out.println(registro);%>" class="form-control" id="registro"/>
                    <i class="form-control-feedback glyphicon glyphicon-user"></i>
                </div>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-success btn-block registrar-btn" name="registro" onclick="modificar(this.name)">Modificar</button>
            </div>
        </div>-->
            
        <div class="row">
            <div class="col-md-9">
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Nombre</label>
                    <input type="text" value="<%out.println(nombre);%>" class="form-control" id="nombre"/>
                    <i class="form-control-feedback glyphicon glyphicon-user"></i>
                </div>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-success btn-block registrar-btn" name="nombre" onclick="modificar(this.name)">Modificar</button>
            </div>
        </div>
            
        <div class="row">
            <div class="col-md-9">
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Fecha de Nacimiento</label>
                    <input type="date" class="form-control" value="<%out.println(fechaNacimiento);%>" id="fechaNacimiento" min="1950-01-01" max="1998-01-01" />
                    <i class="form-control-feedback glyphicon glyphicon-time"></i>
                </div>
            </div>
            <div class="col-md-3">
               <button type="button" class="btn btn-success btn-block registrar-btn" name="fechaNacimiento" onclick="modificar(this.name)">Modificar</button>
            </div>
        </div>
            
        <div class="row">
            <div class="col-md-9">
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Edad</label>
                    <input type="text" value="<%out.println(edad);%>" class="form-control" id="edad"/>
                    <i class="form-control-feedback glyphicon glyphicon-user"></i>
                </div>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-success btn-block registrar-btn" name="edad" onclick="modificar(this.name)">Modificar</button>
            </div>
        </div>
            
        <div class="row">
            <div class="col-md-9">
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Correo</label>
                    <input type="email" class="form-control" value="<%out.println(correo);%>" id="correo"/>
                    <i class="form-control-feedback glyphicon glyphicon-envelope"></i>
                </div>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-success btn-block registrar-btn" name="correo" onclick="modificar(this.name)">Modificar</button>
            </div>
        </div>
            
        <div class="row">
            <div class="col-md-9">
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Contraseña</label>
                    <input type="password" class="form-control" placeholder="Contraseña" id="contrasenia" value="*******"/>
                    <i class="form-control-feedback glyphicon glyphicon-console"></i>
                </div>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-success btn-block registrar-btn" name="contrasenia" onclick="modificar(this.name)">Modificar</button>
            </div>
        </div>
            
        <div class="row">
            <div class="col-md-9">
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Cargo</label>
                    <select class="form-control" id="cargo" value="<%out.println(cargo);%>">
                        <% /*
                            for (int i=0;i<cargos.length;i++){
                                String cargoAux;
                                cargoAux=String.valueOf(cargos[i][0]);
                                out.println("<option>"+cargoAux+"</option>");
                            }*/
                        %>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-success btn-block registrar-btn" name="cargo" onclick="modificar(this.name)">Modificar</button>
            </div>
        </div>
            
        <div class="row">
            <div class="col-md-9">
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Fecha de Contratación</label>
                    <input type="date" class="form-control" value="<%out.println(fechaContratacion);%>" id="fechaContratacion" min="1950-01-01" max="1998-01-01" />
                    <i class="form-control-feedback glyphicon glyphicon-time"></i>
                </div>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-success btn-block registrar-btn" name="fechaContratacion" onclick="modificar(this.name)">Modificar</button>
            </div>
        </div>
            
        <div class="row">
            <div class="col-md-9">
                <div class="form-group has-feedback has-feedback-left">
                    <label class="control-label">Activo en el sistema</label>
                    <input type="text" value="<%out.println(activo);%>" class="form-control" id="activo"/>
                    <i class="form-control-feedback glyphicon glyphicon-user"></i>
                </div>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-success btn-block registrar-btn" name="activo" onclick="modificar(this.name)">Modificar</button>
            </div>
        </div>
    </div>
</div>
                    