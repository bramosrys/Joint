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
    if(accion==="ModificarViaje"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/modificarTrabajador.jsp",true);
        conexion.send();
    }
    if(accion==="CancelarViaje"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/formularioEliminarTrabajador.jsp",true);
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
    /*if(accion==="otro"){
        var url ="/Joint/sistema/vista/accion/otro.jsp";
        document.location=url;
    }*/
}
/*********************************Nuevo Trabajador*************************************/
function formularioTrabajador(){
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
        conexion.open("POST","../../../CargarNuevoTrabajador",true);
        conexion.send();
}
function registrarTrabajador(){
    var noEmpleado=document.getElementById("noEmpleado").value;
    var cargo=document.getElementById("cargo").value;
    console.log(noEmpleado);
    console.log(cargo);
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
    conexion.open("POST","../../../NuevoTrabajador?noEmpleado="+noEmpleado+"&cargo="+cargo,true);
    conexion.send();
}
/*********************************Termina Trabajador*************************************/
/*********************************Eliminar Trabajador*************************************/
function eliminarTrabajador(){
    var noEmpleado=document.getElementById("noEmpleado").value;
    console.log(noEmpleado);
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
    conexion.open("POST","../../../EliminarTrabajador?noEmpleado="+noEmpleado,true);
    conexion.send();
}
/*********************************Termina Eliminar Trabajador*************************************/
/*********************************Modificar Trabajador*************************************/
function buscarMTrabajador(){
    var noEmpleado=document.getElementById("noEmpleado").value;
    console.log(noEmpleado);
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("respuestaModificacion").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","../../../BuscarMTrabajador?noEmpleado="+noEmpleado,true);
    conexion.send();
}
function modificar(str){
    var nombreAccion=str;
    var dato=document.getElementById(nombreAccion).value;
    var idTrabajador=document.getElementById("idTrabajador").value;
    console.log(nombreAccion);
    console.log(dato);
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("respuestaModificado").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","../../../ModificarTrabajador?nombreAccion="+nombreAccion+"&dato="+dato+"&idTrabajador="+idTrabajador,true);
    conexion.send();
}
/*********************************Termina modificar Trabajador*************************************/