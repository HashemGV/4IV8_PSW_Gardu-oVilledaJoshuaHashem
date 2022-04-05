function validar(e){
    var teclado=(document.all)?e.KeyCode : e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var probar=String.fromCharCode(teclado);
    return patron.test(probar);
}

 function campos(){
    var nom=document.formulario.nombre.value;
    var appat=document.formulario.appat.value;
    var apmat=document.formulario.apmat.value;
    var bol=document.formulario.boleta.value;
    var tel=document.formulario.telefono.value;
    if((nom=="")||(appat=="")||(apmat=="")||(bol=="")||(tel=="")){
        alert("Debes llenar todos los campos")
    }
}

function validard(){
    var nom=document.formulario.nombre.value;
    var appat=document.formulario.appat.value;
    var apmat=document.formulario.apmat.value;
    if (!str.search("/[A-Z][a-z]+\s/",nom)&&!str.search("/[A-Z][a-z]+\s/",appat)&&
    !str.search("/[A-Z][a-z]+\s/",apmat)){
        alert("Datos invalidos")
    }
}
