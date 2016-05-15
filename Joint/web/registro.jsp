<%-- 
    Document   : Registro
    Created on : May 12, 2016, 7:04:27 PM
    Author     : jdiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <link href="recursos/css/registro.css" rel="stylesheet">
    <script src="recursos/js/jquery-2.2.3.min.js"></script>
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
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".bottom-collapse-right"> <!-- NOTE! data-target was changed to .bottom-collapse -->
              <span class="icon-bar"></span>
            </button>
          </div>

          <div class="row">
              
            <div class="col-md-4"></div>

            <div class="col-md-4 visible-lg">
                <ul class="nav navbar-nav">
                  <h2 class="text-center nav-titulo">¡Unete a nosotros!</h2>
                </ul>
            </div>
            
            <div class="col-md-4 visible-xs">
                <ul class="nav navbar-nav">
                  <h2 class="text-center nav-titulo">¡Unete!</h2>
                </ul>
            </div>
            
            <div class="col-md-4">
              <div class="navbar-collapse collapse bottom-collapse-right"> <!-- NOTE! The extra bottom-collapse class put on here -->
                <ul class="nav navbar-nav pull-right">
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
            
          </div>
        </div>
    </div>
    <!-- Static bottom navbar -->
    <div class="navbar navbar-default navbar-fixed-bottom">
      <div class="container">
      	<div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".bottom-collapse-2"> <!-- NOTE! data-target was changed to .bottom-collapse -->
	        <span class="icon-bar"></span>
	      </button>
	</div>
        <div class="navbar-collapse collapse bottom-collapse-2"> <!-- NOTE! The extra bottom-collapse class put on here -->
          <ul class="nav navbar-nav">
            <li>
                <a class="text-center ">
                    <img src="recursos/imagenes/index/logo.png" class="img-logo img-responsive center-block" id="logo" data-toggle="modal" data-target="#myModal" data-title="Acceder al sistema">
                </a>
            </li>
          </ul>
          
        </div><!--/.nav-collapse -->
      </div>
    </div>



    <div class="container-fluid container-registro">
        <div class="container">
          <div class="col-md-6">
              <div class="col-md-12" id="ingresar-empleado">
                    <h2 class="text-center">Ingresa tu numero de empleado</h2><hr>
                    <form class="form-horizontal" method="POST" action="Registro">
                      <div class='form-group has-feedback has-feedback-left'>
                          <input type='text' class='form-control' placeholder='Número de empleado' value="" id='noEmpleado' name='noEmpleado' onblur="existeEmpleado(this.value)" onkeyup="existeEmpleado(this.value)"/>
                          <i class='form-control-feedback glyphicon glyphicon-user'></i>
                      </div>
                    </form>
              </div>
              <div class="col-md-12">
                  <div class="row" id="respuesta-empleado">
                      
                  </div>
              </div>
          </div>
          <div class="col-md-6" id="registro">
            
          </div>
        </div>

    </div>
    <!-- scripts -->
    <script src="sistema/vista/registro/js/registro.js"></script>
    <script src="sistema/vista/registro/js/validarRegistro.js"></script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    
    <script src="recursos/bootstrap336/dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="recursos/bootstrap336/dist/js/ie10-viewport-bug-workaround.js"></script>
    
  </body>
</html>
