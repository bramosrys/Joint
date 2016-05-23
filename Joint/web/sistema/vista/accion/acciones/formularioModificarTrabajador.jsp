<%-- 
    Document   : formularioModificarTrabajador
    Created on : May 22, 2016, 8:39:08 PM
    Author     : jdiaz
--%>
<%
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

