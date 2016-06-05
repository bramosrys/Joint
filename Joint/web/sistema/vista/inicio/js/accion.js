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
        var url ="CargarCalificar";
        document.location=url;
    }
    if(accion==="Aviso"){
        var url ="/Joint/sistema/vista/accion/administrarAvisos.jsp";
        document.location=url;
    }
    if(accion==="Estadistica"){
        var url ="/Joint/sistema/vista/accion/estadisticas.jsp";
        document.location=url;
    }
    if(accion==="Publicacion"){
        var url ="/Joint/sistema/vista/accion/administrarReportes.jsp";
        document.location=url;
    }
}