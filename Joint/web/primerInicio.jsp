<%-- 
    Document   : primerIncio
    Created on : May 15, 2016, 8:39:15 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(true);
    String id= sesion.getId();
    String noEmpleado=(String)sesion.getAttribute("sesionActual");
    String nombre=(String)sesion.getAttribute("nombre");
    if(sesion.isNew()){
        response.sendRedirect("index.jsp");
        return;
    }
    if(sesion==null){
        response.sendRedirect("index.jsp");
    }else{
        if(sesion.getAttribute("sesionActual")==null){
            response.sendRedirect("index.jsp");
        }
    }
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
                  <h2 class="text-center nav-titulo">Este es tu primer inicio</h2>
                </ul>
            </div>
            <div class="col-md-4 visible-xs">
                <ul class="nav navbar-nav">
                  <h2 class="text-center nav-titulo">Inicio</h2>
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
    <div class="navbar navbar-default navbar-fixed-bottom" style="background:#303030;">
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
        <h2 class="text-left">Completa tu informacion</h2><hr>
        <div class="col-md-6">
          <h3 class="text-center">Elige una imagen de usuario (Opcional)</h3><hr>
          <div class="col-md-12" id="imagenUsuario">
            <a  class="thumbnail center-block">
              <img src="sistema/imagenesUsuario/userImage.png" class="img-responsive" alt="...">
            </a>
            <button type="button" class="btn btn-info btn-block">Enviar</button>
          </div>
          <div class="col-md-12" id="respuesta-imagen">
            
          </div>
        </div>
        <div class="col-md-6">
          <h3 class="text-center">Completa tu contacto telefonico</h3><hr>
          <form role="form"> 
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Telefono fijo</label>
              <input type="text" class="form-control" placeholder="Telefono fijo (por ejemplo casa)" id="fijo"/>
              <i class="form-control-feedback glyphicon glyphicon-home"></i>
              <button type="button" class="btn btn-info pull-right contacto-btn">Guardar</button>
            </div>
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">Telefono Celular</label>
              <input type="text" class="form-control" placeholder="Telefono celular" id="celular"/>
              <i class="form-control-feedback glyphicon glyphicon-earphone"></i>
              <button type="button" class="btn btn-info pull-right contacto-btn">Guardar</button>
            </div>
            <div class="form-group has-feedback has-feedback-left">
              <label class="control-label">¿Tienes Extension en tu lugar de trabajo?</label>
              <input type="text" class="form-control" placeholder="Extensión" id="ext"/>
              <i class="form-control-feedback glyphicon glyphicon-phone-alt"></i>
              <button type="button" class="btn btn-info pull-right contacto-btn">Guardar</button>
            </div>
          </form>
          <div class="col-md-12" id="respuesta-contacto">
            
          </div>
        </div>
        <div class="col-md-12" >
            <button type="button" class="btn btn-success center-block btn-continuar">Continuar</button>
        </div>
      </div>
    </div>
    <!-- scripts -->
    <script src="sistema/vista/inicio/js/inicio.js"></script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    <script src="recursos/js/jquery-2.2.3.min.js"></script>
    <script src="recursos/bootstrap336/dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="recursos/bootstrap336/dist/js/ie10-viewport-bug-workaround.js"></script>
    
  </body>
</html>
