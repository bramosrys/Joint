<%-- 
    Document   : formularioEliminarTrabajador
    Created on : May 22, 2016, 4:44:30 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String horasalida;
    String fechasalida;
    String nombreOperador;
%>

<div class='col-md-12'>
    <h3 class="text-center">Datos del viaje</h3><hr>
    <%
        if(request.getAttribute("horaSalida")!=null && request.getAttribute("fechaSalida")!=null && request.getAttribute("operador")!=null){
            horasalida=(String)request.getAttribute("horaSalida");
            fechasalida=(String)request.getAttribute("fechaSalida");
            nombreOperador=(String)request.getAttribute("operador");
            out.println("<div class='row'>");
                out.println("<div class='col-md-3'>");
                    out.println("<h5 class='text-center'>Fecha de salida: <strong>"+fechasalida+"</strong></h5><hr>");
                out.println("</div>");
                out.println("<div class='col-md-3'>");
                   out.println(" <h5 class='text-center'>Hora de salida: <strong>"+horasalida+"</strong></h5><hr>");
                out.println("</div>");
                out.println("<div class='col-md-3'>");
                    out.println("<h5 class='text-center'>Operador Designado: <strong>"+nombreOperador+"</strong></h5><hr>");
                out.println("</div>");
                out.println("<div class='col-md-3'>");
                    out.println("<h5 class='text-center'>Logistica por: <strong>"+session.getAttribute("nombreUsuario")+"</strong></h5><hr>");
                out.println("</div>");
            out.println("</div>");
        }else{
            out.println("<h4 class='text-center'>Error al recuperar los datos</h4>");
        }
    %>
</div>
<div class="col-md-6">
    <h3 class="text-center">Logistica del viaje</h3><hr>
    <div class="form-group has-feedback has-feedback-left">
        <label class="control-label">Fecha de llegada</label>
        <input type="date" class="form-control" placeholder="Fecha de Llegada" id="fechallegada" min="2016-06-01" max="2017-01-01" />
        <i class="form-control-feedback glyphicon glyphicon-calendar"></i>
    </div>
    <div class="form-group has-feedback has-feedback-left">
        <label class="control-label">Hora de entrada</label>
        <input type="time" class="form-control" placeholder="Hora de entrada" id="horaentrada"/>
        <i class="form-control-feedback glyphicon glyphicon-time"></i>
    </div>
</div>
<div class="col-md-6">
    <h3 class="text-center">Datos del viaje</h3><hr>
        <div class="form-group has-feedback has-feedback-left">
            <label class="control-label">Kilometraje</label>
            <input type="text" class="form-control" placeholder="Kilometraje" id="kilometraje"/>
            <i class="form-control-feedback fa  fa-fw fa-road fa-fw"></i>
        </div>
</div>

<div class="col-md-12">
    <button type="button" class="btn btn-primary btn-block">Finalizar Viaje</button>
</div>