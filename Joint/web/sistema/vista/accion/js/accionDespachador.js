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
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/despachador/crearViaje.jsp",true);
        conexion.send();
    }
    if(accion==="FinalizarViaje"){
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/despachador/finalizarViaje.jsp",true);
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
    if(noEmpleado.length>=7){
        var conexion;
        if (window.XMLHttpRequest){
            conexion=new XMLHttpRequest();
        }else{
            conexion=new ActiveXObject("Microsoft.XMLHTTP");
        }
        conexion.onreadystatechange=function(){
            if (conexion.readyState===4 && conexion.status===200){
                document.getElementById("respuestaOperador").innerHTML=conexion.responseText;
            }
        }
        conexion.open("POST","../../../BuscarOperador?noEmpleado="+noEmpleado,true);
        conexion.send();
    }
}
function buscarViaje(str){
    var idViaje=str;
    if(idViaje.lenght==0){
        
    }else{
        var conexion;
        if (window.XMLHttpRequest){
            conexion=new XMLHttpRequest();
        }else{
            conexion=new ActiveXObject("Microsoft.XMLHTTP");
        }
        conexion.onreadystatechange=function(){
            if (conexion.readyState===4 && conexion.status===200){
                document.getElementById("respuestaViaje").innerHTML=conexion.responseText;
            }
        }
        conexion.open("POST","../../../BuscarViaje?idViaje="+idViaje,true);
        conexion.send();
    }
}
function mostrarFormularioCrearViaje(){
    var conexion;
        if (window.XMLHttpRequest){
            conexion=new XMLHttpRequest();
        }else{
            conexion=new ActiveXObject("Microsoft.XMLHTTP");
        }
        conexion.onreadystatechange=function(){
            if (conexion.readyState===4 && conexion.status===200){
                document.getElementById("formularioCrearViaje").innerHTML=conexion.responseText;
            }
        }
        conexion.open("POST","/Joint/sistema/vista/accion/acciones/despachador/formularioCrearViaje.jsp",true);
        conexion.send();
}
function mostrarFormularioFinalizarViaje(){
    var conexion;
        if (window.XMLHttpRequest){
            conexion=new XMLHttpRequest();
        }else{
            conexion=new ActiveXObject("Microsoft.XMLHTTP");
        }
        conexion.onreadystatechange=function(){
            if (conexion.readyState===4 && conexion.status===200){
                document.getElementById("formularioCrearViaje").innerHTML=conexion.responseText;
            }
        }
        conexion.open("POST","../../../CargarFormularioFinalizarViaje",true);
        conexion.send();
}
function crearViaje(){
    var idOperador=document.getElementById("idOperador").value;
    var fechaSalida=document.getElementById("fechasalida").value;
    var horaSalida=document.getElementById("horasalida").value;
    var calle=document.getElementById("calle").value;
    var numero=document.getElementById("numero").value;
    var colonia=document.getElementById("colonia").value;
    var delegacion=document.getElementById("delegacion").value;
    var estado=document.getElementById("estado").value;
    var cp=document.getElementById("cp").value;
    var parametrosUrl="idOperador="+idOperador+"&fechasalida="+fechaSalida+"&horasalida="+horaSalida+"&calle="+calle+"&numero="+numero+"&colonia="+colonia+"&delegacion="+delegacion+"&estado="+estado+"&cp="+cp;
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("formularioCrearViaje").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","../../../CrearViaje?"+parametrosUrl,true);
    conexion.send();
}
/****************************termina viaje********************************/