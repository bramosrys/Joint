<%-- 
    Document   : respuestaRegistro
    Created on : May 13, 2016, 11:23:09 AM
    Author     : jdiaz
--%>

<%@page import="joint.sistema.gestion.GestionadorTrabajador"%>
<%@page import="joint.sistema.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    String fechaContratacion="";
    String cargo="";
    String noEmp="";
    if(request.getAttribute("fechaContratacion")!=null){
        fechaContratacion=(String)request.getAttribute("fechaContratacion");
    }
    if(request.getAttribute("fechaContratacion")!=null){
        cargo=(String)request.getAttribute("cargo");
    }
    if(request.getAttribute("fechaContratacion")!=null){
        noEmp=(String)request.getAttribute("noEmpleado");
    }
%>
<div class="row">
    <h1 class="text-center">Ingresa tus datos</h1><hr>
    <div class="col-md-12">
        <h4 class="">Número de empleado: <%out.println(noEmp);%></h4>
        <h4 class="">Fecha de Contratación: <%out.println(fechaContratacion);%></h4>
        <h4 class="">Cargo: <%out.println(cargo);%></h4>
        <form role="form"> 
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Nombre Completo</label>
              <input type="hidden" id="noEmpleado" value="<%out.println(noEmp);%>"/>
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
            <button type="button" value="Input" name='submit' class='btn btn-primary btn-block'onclick="validarRegistro()"><i class='glyphicon glyphicon-triangle-right'></i>Ok</button>
        </form>
    </div>
</div>
<%
    fechaContratacion=null;
    cargo=null;
    noEmp=null;
%>