<%-- 
    Document   : respuestaRegistro
    Created on : May 13, 2016, 11:23:09 AM
    Author     : jdiaz
--%>

<%@page import="joint.sistema.gestion.GestionadorTrabajador"%>
<%@page import="joint.sistema.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String noEmp= request.getParameter("noEmpleado");
    Trabajador trabajador=new Trabajador();
    trabajador.setNoEmpleado(Integer.parseInt(noEmp));
    GestionadorTrabajador gTrabajador=new GestionadorTrabajador(trabajador);
    trabajador=gTrabajador.getFechaContratacion();
%>
<div class="row">
    <h1 class="text-center">Ingresa tus datos</h1><hr>
    <div class="col-md-12">
        <h4 class="">Número de empleado: <%out.println(noEmp);%></h4>
        <h4 class="">Fecha de Contratación: <%out.println(trabajador.getFechaContratacion());%></h4>
<% trabajador=gTrabajador.getCargo(); %>
        <h4 class="">Cargo: <%out.println(trabajador.getCargo());%></h4>
        <form role="form"> 
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Nombre Completo</label>
              <input type="text" class="form-control" placeholder="Nombre Completo" />
              <i class="form-control-feedback glyphicon glyphicon-user"></i>
            </div>
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Contraseña</label>
              <input type="text" class="form-control" placeholder="Contraseña" />
              <i class="form-control-feedback glyphicon glyphicon-console"></i>
            </div>
        </form>
    </div>
</div>