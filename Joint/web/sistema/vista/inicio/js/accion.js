function accion(str){
    var idAccion=str;
    var accion=document.getElementById(idAccion).value;
    console.log(idAccion);
    console.log(accion);
    if(accion==="AdministrarPersonal"){
        var url ="/Joint/sistema/vista/accion/administrarPersonal.jsp";
        document.location=url;
    }
}