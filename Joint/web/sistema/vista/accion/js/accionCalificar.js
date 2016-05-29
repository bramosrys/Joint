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
/*********************************Termina Calificar*************************************/
/****************************viaje***************************************/
