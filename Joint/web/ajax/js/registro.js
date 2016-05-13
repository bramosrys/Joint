
function existeEmpleado(str){
    var noEmpleado=str;
    console.log("entre a existeEmpleado"+noEmpleado);
    console.log(noEmpleado.length);
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
    console.log("entre a registro");
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
        conexion.open("GET","ajax/acciones/registro/respuestaRegistro.jsp?noEmpleado="+noEmpleado,true);
        conexion.send();
}
