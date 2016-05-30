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
        conexion.open("POST","CargarFormularioCalificar",true);
        conexion.send();
    }
}
function mostrarFormularioCalificar(){
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("formularioCalificar").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","/Joint/sistema/vista/accion/acciones/General/formularioCalificar.jsp",true);
    conexion.send();
}
function setValorCalificacion(str){
    var valorCalificacion=str;
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("respuestavalor").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","/Joint/sistema/vista/accion/acciones/General/respuestaValorCalificacion.jsp?valor="+valorCalificacion,true);
    conexion.send();
}
function calificar(){
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("accion").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","Calificar",true);
    conexion.send();
}
/*********************************Termina Calificar*************************************/
/****************************viaje***************************************/
function mostrarDatosViaje(str){
    console.log(str);
    var idCalificacion=str;
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("datosviaje").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","MostrarDatosViaje?idCalificacion="+idCalificacion,true);
    conexion.send();
}
