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
    if(accion==="RegistrarTrabajador"){
        conexion.open("POST","../../../CargarNuevoTrabajador",true);
        conexion.send();
    }
    if(accion==="ModificarTrabajador"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/respuestaModificarTrabajador.jsp",true);
        conexion.send();
    }
    if(accion==="EliminarTrabajador"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/respuestaEliminarTrabajador.jsp",true);
        conexion.send();
    }
}
function regresar(str){
    var accion=str;
    console.log(accion);
    if(accion==="AdministrarPersonal"){
        var url ="/Joint/sistema/vista/accion/administrarPersonal.jsp";
        document.location=url;
    }
}
function formularioTrabajador(){
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
    conexion.open("POST","CargarNuevoTrabajador.jsp",true);
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