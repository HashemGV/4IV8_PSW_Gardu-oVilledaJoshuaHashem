/*
Es un lenguaje q posee un paradigma orientado a objetos
y a funciones por tal motivo presenta una particulaidad la cual es 

NO TIPADO

no existe int, double, float, String, etc

Dentro de JS todo es VAR

De acuerdo al estandar de ES& se manejan 3 tipos de 
variables:

VAR
LET -> Variable de tipo protected
CONST

*/

function validar(formulario){
    if(formulario.nombre.value.length < 3){
        alert("Escriba por lo menos 5 caracteres para el nombre");
        formulario.nombre.focus();
        return false;
    }

    var checarOK = "QWERTYUIOPASDFGHJKLÑZXCVBNM" + "qwertyuiopasdfghjklñzxcvbnm"
    var checarStr = formulario.nombre.value;
    var allValido = true;

    for(var i=0; i<checarStr.length; i++){
        var ch= checarStr.charAt(i)
        for(var j=0; j<checarOK.length; j++){
            if(ch==checarOK.charAt(j))
            break;
        }
        if(j==checarOK.length){
            allValido=false;
            break;
        }
    }
    if(allValido){
        alert("Esciba unicamente letras en el campo de nombre");
        formulario.nombre.focus();
        return false;
    }

    var checarOK="1234567890";

    //var checkStr=document.formulario.nombre.value; <- esto es pa cuando no trae nombre we 

    var checarStr=formulario.edad.value;
    var allValido=true;

    for(var i=0; i<checarStr; i++){
        var ch=checarStr.charAt(i)
        for(var j=0; j<checarOK.length; j++){
            break
        }
        if(j==checarOK.length){
            allValido=false;
            break;
        }
    }

    if(allValido){
        alert("Escribe unicamente letras en el campo de caracter");
        formulario.nombre.focus();
        return false;
    }

    /*
    Es necesario que buscen como crear expresiones regulares
    para poder hacer el uso de una expresion regurlar
    */

    var txt=formulario.email.value;

    //crear expresion

    var b=/^[@s]+^+(.)+/;
    alert("Email " + (b.test(txt)?" ";"no")+"valido");
    return b.test;
}
