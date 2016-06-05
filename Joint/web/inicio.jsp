<%-- 
    Document   : primerIncio
    Created on : May 15, 2016, 8:39:15 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String noEmpleado = (String)session.getAttribute("noEmpleado");
    String nombre = (String)session.getAttribute("nombreUsuario");
    if(noEmpleado==null){
        response.sendRedirect("/Joint/index.jsp");
    }
    String color=(String)session.getAttribute("color");
%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Sistema de evaluación">
    <meta name="author" content="ReaTeam">
    <link rel="icon" href="recursos/imagenes/navegacion/favicon.ico">
    
    <title>Sistema de Evaluación</title>
    <script src="sistema/vista/inicio/js/inicio.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="recursos/bootstrap336/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="recursos/css/inicio.css" rel="stylesheet">
    
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="recursos/bootstrap336/dist/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <div class="navbar navbar-default navegacion">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle pull-left" data-toggle="collapse" data-target=".bottom-collapse-left"> <!-- NOTE! data-target was changed to .bottom-collapse -->
              <span class="icon-bar"></span>
            </button>
            <button type="button" class="navbar-toggle pull-right" data-toggle="collapse" data-target=".bottom-collapse-right"> <!-- NOTE! data-target was changed to .bottom-collapse -->
              <span class="icon-bar"></span>
            </button>
          </div>

          <div class="row">

            <div class="col-md-4">
              <div class="navbar-collapse collapse bottom-collapse-left"> <!-- NOTE! The extra bottom-collapse class put on here -->
                <ul class="nav navbar-nav pull-left">
                  <li>
                      <a class="text-center">
                          <img src='recursos/imagenes/index/navbar/question.png' class='img-responsive center-block img-nabvar'>
                      </a>
                  </li>
                  <li>
                      <a class="text-center">
                          <img src='recursos/imagenes/index/navbar/place.png' class='img-responsive center-block img-nabvar'>
                      </a>
                  </li>
                  <li>
                      <a class="text-center">
                          <img src='recursos/imagenes/index/navbar/send.png' class='img-responsive center-block img-nabvar'>
                      </a>
                  </li>
                  <li>
                      <a class="text-center">
                          <img src='recursos/imagenes/index/navbar/help.png' class='img-responsive center-block img-nabvar'>
                      </a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="col-md-4 visible-lg">
                <ul class="nav navbar-nav">
                  <h2 class="text-center nav-titulo">Home</h2>
                </ul>
            </div>
            <div class="col-md-4 visible-xs">
                <ul class="nav navbar-nav">
                  <h2 class="text-center nav-titulo">Home</h2>
                </ul>
            </div>

            <div class="col-md-4">
              <div class="navbar-collapse collapse bottom-collapse-right">
                <ul class="nav navbar-nav pull-right">
                  <li>
                    <h4 class="text-center nombre-usuario"><%out.println(nombre);%></h4>
                  </li>
                  <li>
                      <a class="text-center"> 
                          <img src='recursos/imagenes/inicio/nav/settings.png' class='img-responsive center-block img-nabvar'>
                      </a>
                  </li>
                  <li>
                      <a class="text-center">
                            <form method="POST" onsubmit="window.location.href = 'CerrarSesion'; return false;">
                                <input type="image" name="submit" src='recursos/imagenes/inicio/nav/exit.png' border="0" alt="Submit" class='img-responsive center-block img-nabvar'/>
                            </form>
                      </a>
                  </li>
                </ul>
              </div>
            </div>

          </div>
        </div>
    </div>

    <!-- Static bottom navbar -->
    <div class="navbar navbar-default navbar-fixed-bottom" style="background:#<%out.println(color);%>;">
      <div class="container">
      	<div class="navbar-header">
  	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".bottom-collapse-2"> <!-- NOTE! data-target was changed to .bottom-collapse -->
  	        <span class="icon-bar"></span>
  	      </button>
	      </div>
        <div class="navbar-collapse collapse bottom-collapse-2"> <!-- NOTE! The extra bottom-collapse class put on here -->
          <ul class="nav navbar-nav">
            <li>
                <a class="text-center" href="#inicio">
                    <img src="recursos/imagenes/index/logo.png" class="img-logo img-responsive center-block" id="logo" data-toggle="modal" data-target="#myModal" data-title="Acceder al sistema">
                </a>
            </li>
          </ul>
          
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
      <div class="row" id="row-principal">
        <h2 class='text-left'>¿Que desea hacer?</h2><hr>
        <% 
            String cargo = (String)session.getAttribute("cargo");
            if(session.getAttribute("cargo")!=null){
                System.out.println(cargo);
                //cada accion tendra un id, asi es como el js verificara de que accion hablamos
                if(cargo.equals("Administrador")){
    		out.println("<div class='col-md-3 accion'>");
    			out.println("<h3 class='text-center'>Administrar Personal</h3>");
                        out.println("<input type='hidden' value='AdministrarPersonal' id='1'>");
    			out.println("<img src='recursos/imagenes/inicio/administrador/management-group.png' name='1' class='img-responsive center-block img-action' onclick='accion(this.name)'>");
    		out.println("</div>");
                }
                if(cargo.equals("Operador")){
                    out.println("<div class='col-md-3 accion'>");
    			out.println("<h3 class='text-center'>Calificar</h3>");
                        out.println("<input type='hidden' name='country' value='Calificar' id='1'>");
    			out.println("<img src='recursos/imagenes/inicio/operador/calificar.png' name='1' class='img-responsive center-block img-action' onclick='accion(this.name)'>");
                    out.println("</div>");
                }
                if(cargo.equals("Despachador")){
                    out.println("<div class='col-md-3 accion'>");
    			out.println("<h3 class='text-center'>Administrar Viaje</h3>");
                        out.println("<input type='hidden' value='AdministrarViaje' id='1'>");
    			out.println("<img src='recursos/imagenes/inicio/despachador/administrar-viaje.png' name='1' class='img-responsive center-block img-action' onclick='accion(this.name)'>");
                    out.println("</div>");
                    out.println("<div class='col-md-3 accion'>");
    			out.println("<h3 class='text-center'>Calificar</h3>");
                        out.println("<input type='hidden' name='country' value='Calificar' id='2'>");
    			out.println("<img src='recursos/imagenes/inicio/despachador/calificar.png' name='2' class='img-responsive center-block img-action' onclick='accion(this.name)'>");
                    out.println("</div>");
                }
                if(cargo.equals("Gerente")){
                    out.println("<div class='col-md-3 accion'>");
    			out.println("<h3 class='text-center'>Avisos</h3>");
                        out.println("<input type='hidden' name='country' value='Aviso' id='1'>");
    			out.println("<img src='recursos/imagenes/inicio/gerente/aviso.png' name='1' class='img-responsive center-block img-action' onclick='accion(this.name)'>");
                    out.println("</div>");
                    out.println("<div class='col-md-3 accion'>");
    			out.println("<h3 class='text-center'>Reportes</h3>");
                        out.println("<input type='hidden' name='country' value='Reporte' id='2'>");
    			out.println("<img src='recursos/imagenes/inicio/gerente/report.png' name='2' class='img-responsive center-block img-action' onclick='accion(this.name)'>");
                    out.println("</div>");
                    out.println("<div class='col-md-3 accion'>");
    			out.println("<h3 class='text-center'>Calificar</h3>");
                        out.println("<input type='hidden' name='country' value='Calificar' id='3'>");
    			out.println("<img src='recursos/imagenes/inicio/gerente/calificar.png' name='3' class='img-responsive center-block img-action' onclick='accion(this.name)'>");
                    out.println("</div>");
                }
            }else{
                response.sendRedirect("/Joint/error.jsp");
            }
            
        %>
      </div>
    </div>
    <!-- scripts -->
    <script src="sistema/vista/inicio/js/accion.js"></script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    <script src="recursos/js/jquery-2.2.3.min.js"></script>
    <script src="recursos/bootstrap336/dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="recursos/bootstrap336/dist/js/ie10-viewport-bug-workaround.js"></script>
    
  </body>
</html>
