
function existeEmpleado(str){
    var noEmpleado=str;
    if(noEmpleado.length>=8){
        var conexion;
        if (window.XMLHttpRequest){
            conexion=new XMLHttpRequest();
        }else{
            conexion=new ActiveXObject("Microsoft.XMLHTTP");
        }
        conexion.onreadystatechange=function(){
            if (conexion.readyState===4 && conexion.status===200){
                document.getElementById("respuesta-empleado").innerHTML=conexion.responseText;
            }
        }
        conexion.open("POST","RespuestaExiste?noEmpleado="+noEmpleado,true);
        conexion.send();
    }
}

function registro(str){
    var noEmpleado=str;
    var conexion;
        if (window.XMLHttpRequest){
            conexion=new XMLHttpRequest();
        }else{
            conexion=new ActiveXObject("Microsoft.XMLHTTP");
        }
        conexion.onreadystatechange=function(){
            if (conexion.readyState===4 && conexion.status===200){
                document.getElementById("registro").innerHTML=conexion.responseText;
            }
        }
        conexion.open("POST","RespuestaRegistro?noEmpleado="+noEmpleado,true);
        conexion.send();
}
