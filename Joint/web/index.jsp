<%-- 
    Document   : index
    Created on : May 10, 2016, 10:07:33 PM
    Author     : jdiaz
--%>


<%@page import="net.tanesha.recaptcha.ReCaptchaResponse"%>
<%@page import="net.tanesha.recaptcha.ReCaptchaImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>

<%
    String estadoSesion=(String)request.getAttribute("sesion");
    String intento=(String)request.getAttribute("intento");
    int contador;
    if(estadoSesion==null){
        estadoSesion="vacio";
        System.out.println("hacer vacio sesion");
    }
    if(intento==null){
        System.out.println("hacer vacio contador");
        contador=0;
        intento="vacio";
    }else{
        contador=Integer.parseInt(intento); 
    }
    System.out.println(contador);
    System.out.println(estadoSesion);
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
    <link href="recursos/css/index.css" rel="stylesheet">
    
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
    <!-- Static bottom navbar -->
    <div class="navbar navbar-default navbar-fixed-bottom">
      <div class="container">
      	<div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".bottom-collapse"> <!-- NOTE! data-target was changed to .bottom-collapse -->
	        <span class="icon-bar"></span>
	      </button>
	    </div>
        <div class="navbar-collapse collapse bottom-collapse"> <!-- NOTE! The extra bottom-collapse class put on here -->
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



    <div class="container-fluid container-index">
        <div class="row">
            <div class='col-md-4'></div>
            <div class='col-md-4'>
                <h1 class="text-center">¡Bienvenido a Joint!</h1>
            </div>
            <div class='col-md-4'>

                     <div class='col-md-3'>
                         <img src='recursos/imagenes/index/navbar/question.png' class='img-responsive center-block img-nabvar'>
                     </div>
                     <div class='col-md-3'>
                         <img src='recursos/imagenes/index/navbar/place.png' class='img-responsive center-block img-nabvar'>
                     </div>
                     <div class='col-md-3'>
                         <img src='recursos/imagenes/index/navbar/send.png' class='img-responsive center-block img-nabvar'>
                     </div>
                     <div class='col-md-3'>
                         <img src='recursos/imagenes/index/navbar/help.png' class='img-responsive center-block img-nabvar'>
                     </div>

            </div>
        </div>

        <hr>
        <div class="row ">
        	<div class='col-md-4'>
        		<div class="col-md-12">
                    <h2 class='text-center'>!Eres parte de un gran equipo!</h2>
                </div>
                <div class="col-md-">
                    <img src='recursos/imagenes/index/dancers.png' class='img-responsive center-block img-index'>
                </div>
        	</div>
    		
            <div class="col-md-4">
            	<div class="col-md-12">
                    <h2 class='text-center'>!Da lo mejor de ti!</h2>
                </div>
                <div class="col-md-">
                    <img src='recursos/imagenes/index/carrier.png' class='img-responsive center-block img-index'>
                </div>
            </div>
        
            <div class='col-md-4'>
                <div class="col-md-12">
                    <h2 class='text-center'>!Hagamos lo mejor!</h2>
                </div>
                <div class="col-md-">
                    <img src='recursos/imagenes/index/business-male.png' class='img-responsive center-block img-index'>
                </div>
            </div> 
            <div class='col-md-12'>
            </div>
        </div>
        <hr>

        <!-- Modal HTML -->
	    <div id="myModal" class="modal fade">
	        <div class="modal-dialog">
	            <div class="modal-content">
	                <div class="modal-header">
	                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                    <h2 class="modal-title text-center">Iniciar Sesión</h2>
	                </div>
                        <form class="form-horizontal" method="POST" action="IniciarSesion">
                            <div class="modal-body">
                                <%
                                    //Eres un robot?
                                    if(contador==3){
                                        System.out.println("Es robot?");
                                        out.println("<div class='row'>");
                                            out.println("<h3 class='text-center'>¿Eres un robot?</h3>");
                                            out.println("<div class='col-md-12'>");
                                                out.println("<center><div class='g-recaptcha text-center' data-sitekey='6Lfapx8TAAAAABCUTgD6ztTQLSGerpyHWbA9Io60'></div></center>");
                                            out.println("</div>");
                                        out.println("</div>");
                                %>
                                <%
                                    }else{
                                    System.out.println("No Es robot");
                                        out.print("<div class='form-group has-feedback has-feedback-left'>");
                                            out.print("<label class='control-label'>Número de empleado</label>");
                                            out.print("<input type='text' class='form-control' placeholder='Número de empleado' id='noEmpleado' name='noEmpleado'/>");
                                            out.print("<input type='hidden' name='contador' id='contador' value="+contador+">");
                                            out.print("<i class='form-control-feedback glyphicon glyphicon-user'></i>");
                                          out.print("</div>");
                                          out.print("<div class='form-group has-feedback has-feedback-left'>");
                                            out.print("<label class='control-label'>Contraseña</label>");
                                            out.print("<input type='text' class='form-control' placeholder='Contraseña' id='contrasenia' name='contrasenia'/>");
                                            out.print("<i class='form-control-feedback glyphicon glyphicon-console'></i>");
                                        out.print("</div>");
                                    }
                                %>
                                
                            
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                <button type="submit" name="submit" class="btn btn-primary"><i class="glyphicon glyphicon-triangle-right"></i>Ok</button>
                            </div>
                        </form>        
	            </div>
	        </div>
	    </div>

    </div>
    <!-- scripts -->
    <script src='https://www.google.com/recaptcha/api.js?hl=es'></script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    <script src="recursos/js/jquery-2.2.3.min.js"></script>
    <script src="recursos/bootstrap336/dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="recursos/bootstrap336/dist/js/ie10-viewport-bug-workaround.js"></script>
    
  </body>
</html>
