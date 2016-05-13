
function existeEmpleado(str){
    var noEmpleado=str;
    console.log("entre a existeEmpleado"+noEmpleado);
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
    conexion.open("GET","ajax/acciones/registro/respuestaExiste.jsp?noEmpleado="+noEmpleado,true);
    conexion.send();
}
