//Se usa triple ../../../ porque el contexto de la ruta por la ubicacion del jsp busca dentro de la carpeta y no en el padre
function accion(str){
    var idAccion=str;
    var accion=document.getElementById(idAccion).value;
    console.log(idAccion);
    console.log(accion);
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("row-principal").innerHTML=conexion.responseText;
        }
    }
    if(accion==="CrearViaje"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/despachador/formularioCrearViaje.jsp",true);
        conexion.send();
    }
    if(accion==="FinalizarViaje"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/despachador/formularioFinalizarViaje.jsp",true);
        conexion.send();
    }
    if(accion==="ModificarViaje"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/modificarTrabajador.jsp",true);
        conexion.send();
    }
    if(accion==="CancelarViaje"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/despachador/formularioCancelarViaje.jsp",true);
        conexion.send();
    }
}
function regresar(str){
    var accion=str;
    console.log(accion);
    if(accion==="AdministrarViaje"){
        var url ="/Joint/sistema/vista/accion/administrarViaje.jsp";
        document.location=url;
    }
    if(accion==="Calificar"){
        var url ="/Joint/inicio.jsp";
        document.location=url;
    }
    /*if(accion==="otro"){
        var url ="/Joint/sistema/vista/accion/otro.jsp";
        document.location=url;
    }*/
}
/*********************************Calificar*************************************/
function elegirCalificacion(str){
    console.log("entre a elegir");
    var tipoelegido=str;
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("row-principal").innerHTML=conexion.responseText;
        }
    }
    if(tipoelegido==="Viaje"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/despachador/formularioCalificarViaje.jsp",true);
        conexion.send();
    }
}
/*********************************Termina Calificar*************************************/
/****************************viaje***************************************/
function buscarOperador(str){
    var noEmpleado=str;
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("row-principal").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","BuscarOperador?noEmpleado="+noEmpleado,true);
    conexion.send();
}
/****************************termina viaje********************************/