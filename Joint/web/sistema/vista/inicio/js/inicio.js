function continuar(){
    console.log("Entre a continuar");
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
    conexion.open("POST","RespuestaColores",true);
    conexion.send();
}
function guardarColor(str,str2){
    var color=str;
    var noEmpleado=str2;
    console.log(color);
    console.log(noEmpleado);
    var conexion;
    if (window.XMLHttpRequest){
        conexion=new XMLHttpRequest();
    }else{
        conexion=new ActiveXObject("Microsoft.XMLHTTP");
    }
    conexion.onreadystatechange=function(){
        if (conexion.readyState===4 && conexion.status===200){
            document.getElementById("respuesta-color").innerHTML=conexion.responseText;
        }
    }
    conexion.open("POST","GuardarColor?color="+color+"&noEmpleado="+noEmpleado,true);
    conexion.send();
}