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
    if(accion==="HacerAviso"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/Gerente/hacerAviso.jsp",true);
        conexion.send();
    }
    if(accion==="EditarAviso"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/Gerente/editarAviso.jsp",true);
        conexion.send();
    }
    if(accion==="EliminarAviso"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/Gerente/eliminarAviso.jsp",true);
        conexion.send();
    }
    if(accion==="MejorDesempenio"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/Gerente/mejorDesempenio.jsp",true);
        conexion.send();
    }
    if(accion==="PeorDesempenio"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/Gerente/peorDesempenio.jsp",true);
        conexion.send();
    }
    if(accion==="Individual"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/Gerente/calificacionIndividual.jsp",true);
        conexion.send();
    }
}
function regresar(str){
    var accion=str;
    console.log(accion);
    if(accion==="AdministrarAvisos"){
        var url ="/Joint/sistema/vista/accion/administrarAvisos.jsp";
        document.location=url;
    }
    if(accion==="Estadisticas"){
        var url ="/Joint/sistema/vista/accion/estadisticas.jsp";
        document.location=url;
    }
}
function mejorDesempenio(){
    var periodo=document.getElementById("periodo").value;
    var anio=document.getElementById("anio").value;;
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("respuesta-desempenio").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","../../../MejorDesempenio?anio="+anio+"&periodo="+periodo,true);
    conexion.send();
}
function buscarEmpleado(str){
    var noEmpleado=str;
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("respuestaBuscarEmpleado").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","../../../BuscarETrabajador?noEmpleado="+noEmpleado,true);
    conexion.send();
}
function mostrarCalificacionIndividual(){
    var idTrabajador=document.getElementById("idTrabajador").value;
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("respuestaCalificacion").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","../../../CalificacionIndividual?idTrabajador="+idTrabajador,true);
    conexion.send();
}
function crearAviso(){
    console.log("entre a crear aviso");
    var titulo=document.getElementById("titulo").value;
    var contenido=document.getElementById("contenido").value;
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("respuestaaviso").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","../../../CrearAviso?titulo="+titulo+"&contenido="+contenido,true);
    conexion.send();
}

