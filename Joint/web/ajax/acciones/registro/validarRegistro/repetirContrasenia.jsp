<%-- 
    Document   : repetirContrasenia
    Created on : May 13, 2016, 9:23:19 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% /*
    String pass;
    if(request.getAttribute("contrasenia")!=null){
        pass=(String)request.getAttribute("contrasenia");
    }
    */
%>

    <label class="control-label">Verificar Contraseña</label>
        <input type="password" class="form-control" placeholder="Introdusca la contraseña de nuevo" onkeyup="validarContrasenias(this.value)" value="" />
    <i class="form-control-feedback glyphicon glyphicon-console"></i>
