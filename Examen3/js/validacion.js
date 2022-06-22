
//Validación para Registrar.html por metodo onsubmit="return validar(this)"

function validar(registarse){

     //validar long boleta
     if(registarse.boleta.value.length != 10){
        alert("Escriba los 10 digitos de la boleta");
        registarse.boleta.focus();
        return false;
    }
    var checkOK = "0123456789";

    var checkBoleta = registarse.boleta.value;

    var allValido = true;

    for(var i = 0; i < checkBoleta.length; i++){
        var ch = checkBoleta.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j))
            break;
        }
        if(j == checkOK.length){
            allValido = false;
            break;
        }
    }

    if(!allValido){
        alert("Escriba unicamente numeros en el campo de boleta");
        registarse.boleta.focus();
        return false;
    }



    //validar long nombre
    if(registarse.nombre.value.length < 3){
        alert("Escriba por lo menos 3 Caracteres para el nombre");
        registarse.nombre.focus();
        return false;
    }else if(registarse.nombre.value.length  >= 30){
        alert("Solo puedes escribir 30 Caracteres para el nombre");
        registarse.nombre.focus();
        return false;
    }

    var checkOK = "QWERTYUIOPASDFGHJKLZXCVBNMÑ"
    +"qwertyuiopasdfghjklñzxcvbnm" + "";

    var checkStr = registarse.nombre.value;

    var allValido = true;

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j))
            break;
        }
        if(j == checkOK.length){
            allValido = false;
            break;
        }
    }

    if(!allValido){
        alert("Escriba unicamente letras en el campo de nombre");
        registarse.nombre.focus();
        return false;
    }

     //validar long apellido paterno
     if(registarse.appat.value.length < 3){
        alert("Escriba por lo menos 3 Caracteres para el apellido paterno");
        registarse.appat.focus();
        return false;
    }else if(registarse.appat.value.length  >= 30){
        alert("Solo puedes escribir 30 Caracteres para el apellido paterno");
        registarse.appat.focus();
        return false;
    }

    var checkOK = "QWERTYUIOPASDFGHJKLZXCVBNMÑ"
    +"qwertyuiopasdfghjklñzxcvbnm" +"";

    var checkStr = registarse.appat.value;

    var allValido = true;

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j))
            break;
        }
        if(j == checkOK.length){
            allValido = false;
            break;
        }
    }

    if(!allValido){
        alert("Escriba unicamente letras en el campo de apellido paterno");
        registarse.appat.focus();
        return false;
    }

    //validar long apellido materno
    if(registarse.apmat.value.length < 3){
        alert("Escriba por lo menos 3 Caracteres para el apellido materno");
        registarse.apmat.focus();
        return false;
    }else if(registarse.apmat.value.length  >= 30){
        alert("Solo puedes escribir 30 Caracteres para el apellido materno");
        registarse.apmat.focus();
        return false;
    }

    var checkOK = "QWERTYUIOPASDFGHJKLZXCVBNMÑ"
    +"qwertyuiopasdfghjklñzxcvbnm" +"";

    var checkStr = registarse.apmat.value;

    var allValido = true;

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j))
            break;
        }
        if(j == checkOK.length){
            allValido = false;
            break;
        }
    }

    if(!allValido){
        alert("Escriba unicamente letras en el campo de apellido materno");
        registarse.apmat.focus();
        return false;
    }

}


//Validación para reportarequipo.html por metodo onsubmit="return validarReporte(this)"
function validarReporte(){
    
}