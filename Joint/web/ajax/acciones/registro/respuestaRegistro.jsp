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
              <input type="text" class="form-control" placeholder="Nombre Completo" />
              <i class="form-control-feedback glyphicon glyphicon-user"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Fecha de Nacimiento</label>
              <input type="date" class="form-control" placeholder="Fecha de nacimiento" />
              <i class="form-control-feedback glyphicon glyphicon-time"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Correo</label>
              <input type="email" class="form-control" placeholder="Correo electronico" />
              <i class="form-control-feedback glyphicon glyphicon-envelope"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Contraseña</label>
              <input type="password" class="form-control" placeholder="Contraseña" />
              <i class="form-control-feedback glyphicon glyphicon-console"></i>
            </div>
        </form>
    </div>
</div>
<%
    fechaContratacion=null;
    cargo=null;
    noEmp=null;
%>