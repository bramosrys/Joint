var contador=0;
var valido=1;
function validarContrasenia(str){
    console.log("entre a validar contraseña");
    var pass = str;
    if(pass.length>=6){
        var conexion;
        if (window.XMLHttpRequest){
            conexion=new XMLHttpRequest();
        }else{
            conexion=new ActiveXObject("Microsoft.XMLHTTP");
        }
        conexion.onreadystatechange=function(){
            if (conexion.readyState===4 && conexion.status===200){
                document.getElementById("pass2").innerHTML=conexion.responseText;
            }
        }
        conexion.open("POST","ajax/acciones/registro/validarRegistro/repetirContrasenia.jsp?contrasenia="+pass,true);
        conexion.send();
    }
}
function validarContrasenias(str2){
    var str1=document.getElementById("pass").value;
    if(str1==str2){
        contador++;
    }
}
function registroValido(){
    if(contador==valido){
        console.log("todo es valido");
        var conexion;
        if (window.XMLHttpRequest){
            conexion=new XMLHttpRequest();
        }else{
            conexion=new ActiveXObject("Microsoft.XMLHTTP");
        }
        conexion.onreadystatechange=function(){
            if (conexion.readyState===4 && conexion.status===200){
                document.getElementById("pass2").innerHTML=conexion.responseText;
            }
        }
        conexion.open("POST","ajax/acciones/registro/validarRegistro/repetirContrasenia.jsp?contrasenia="+pass,true);
        conexion.send();
    }else{
        
    }
}