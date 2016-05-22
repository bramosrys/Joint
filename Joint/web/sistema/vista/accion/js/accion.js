function accion(str){
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
    var idAccion=str;
    console.log("...entre a accion"+idAccion)
    var accion=document.getElementById(idAccion).value;
    console.log("...accion"+accion);
    conexion.open("POST","RespuestaAccionAdministrador?accion="+accion,true);
    conexion.send(); 
}
