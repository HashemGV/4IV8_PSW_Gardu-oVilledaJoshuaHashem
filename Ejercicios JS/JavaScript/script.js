function validar(e){
    var teclado=(document.all)?e.KeyCode : e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var probar=String.fromCharCode(teclado);
    return patron.test(probar);
}

function interes(){
    var valor=document.formulario1.cantidad.value;
    var resul=parseInt(valor);
    var interes=resul*0.025;
    var total=resul + interes;
    document.formulario1.sueldoI.value="$"+total;
}

function borrard(){
    document.formulario1.sueldoI.value="";
    document.formulario1.cantidad.value="";
}

function comision(){
    var valorc=document.formulario2.cantidad.value;
    var ventas=parseInt(valorc);
    var comision=ventas*0.1;
    var resultado=comision;
    document.formulario2.comi.value="$"+resultado;
}