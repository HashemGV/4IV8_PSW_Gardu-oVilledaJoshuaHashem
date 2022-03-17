function validar(e){
    var teclado=(document.all)?e.KeyCode:e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var patron=String.fromCharCode(teclado);
    return patron.test(probar);
}

function interes(){
    var valor=document.ejercicio1.cantidad.value;
    var resultado=parseInt(valor);
    var interes=resultado*0.02;
    var total=resultado+interes;
    document.ejercicio1.sueldoI.value="$"+total;
}

function borrar(){
    document.ejercicio1.sueldoI.value="";
    document.ejercicio1.cantidad.value="";
}