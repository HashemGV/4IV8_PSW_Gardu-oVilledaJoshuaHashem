function validarn(e){
    var teclado=(document.all)?e.keyCode:e.which;
    if(teclado===8)return true;
    var patron=/[0-9\d .]/;
    var test=String.fromCharCode(teclado);
    return patron.test(test);
}

function validarRegistro(formulario){
    if(formulario.nombre.value.length<3){
        alert("Porfavor recuerda escribir tu nombre completo SIN ABREVIACIONES NI APODOS");
        formulario.nombre.focus();
        return false;
    }
    if(formulario.appat.value.length < 3){
        alert("Porfavor recuerda escribir tu nombre completo SIN ABREVIACIONES NI APODOS");
        formulario.appat.focus();
        return false;
    }
    if(formulario.apmat.value.length < 3){
        alert("Porfavor recuerda escribir tu nombre completo SIN ABREVIACIONES NI APODOS");
        formulario.apmat.focus();
        return false;
    }
    var checkOk="QWERTYUIOPASDFGHJKLÑZXCVBNM+"+"qwertyuiopasdfghjklñzxcvbnm"+" ";
    var checkNombre=formulario.nombre.value;
    var checkAppat=formulario.appat.value;
    var checkApmat=formulario.apmat.value;
    var allValid=true;
    for(var i=0; i<checkNombre.length;i++){
        var ch=checkNombre.charAt(i);
        for(var j=0; j<checkOk.length; j++)
        if(ch==checkOk.charAt(j))
            break;
        if(j==checkOk.length){
            allValid=false;
            break;
        }
    }
    if(!allValid){
        alert("Porfavor Solo usa caracteres del alfabeto");
        formulario.nombre.focus();
        return false;
    }
    for(var i=0; i<checkAppat.length;i++){
        var ch=checkAppat.charAt(i);
        for(var j=0; j<checkOk.length; j++)
        if(ch==checkOk.charAt(j))
            break;
        if(j==checkOk.length){
            allValid=false;
            break;
        }
    }
    if(!allValid){
        alert("Porfavor Solo usa caracteres del alfabeto");
        formulario.appat.focus();
        return false;
    }
    for(var i=0; i<checkApmat.length;i++){
        var ch=checkApmat.charAt(i);
        for(var j=0; j<checkOk.length; j++)
        if(ch==checkOk.charAt(j))
            break;
        if(j==checkOk.length){
            allValid=false;
            break;
        }
    }
    if(!allValid){
        alert("Porfavor Solo usa caracteres del alfabeto");
        formulario.apmat.focus();
        return false;
    }
    var checkOk="1234567890";
    var checkEdad=formulario.edad.value;
    var allValid=true
    for(var i=0; i<checkEdad.length;i++){
        var ch=checkEdad.charAt(i);
        for(var j=0; j<checkOk.length; j++)
        if(ch==checkOk.charAt(j))
            break;
        if(j==checkOk.length){
            allValid=false;
            break;
        }
    }
    if(checkEdad<0 || checkEdad>122){
        alert("Ingresa datos correctos y validos");
        return false;
    }
}