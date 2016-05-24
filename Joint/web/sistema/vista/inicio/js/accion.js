function accion(str){
    var idAccion=str;
    var accion=document.getElementById(idAccion).value;
    console.log(idAccion);
    console.log(accion);
    if(accion==="AdministrarPersonal"){
        var url ="/Joint/sistema/vista/accion/administrarPersonal.jsp";
        document.location=url;
    }
    if(accion==="AdministrarViaje"){
        var url ="/Joint/sistema/vista/accion/administrarViaje.jsp";
        document.location=url;
    }
    if(accion==="Calificar"){
        var url ="/Joint/sistema/vista/accion/calificar.jsp";
        document.location=url;
    }
}