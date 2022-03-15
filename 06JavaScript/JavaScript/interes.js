function validarn(e){
    var teclado=(document.all)?e.KeyCode:e.wich;
    /*vaqmos a aplicar una prueba logica a todo el teclado a partir
    de un patrón, este patrón debe de ser numérico y solo acepta
    del 0 a 9. Todo lo demas lo deja escapar*/
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var probar=String.fromCharCode(teclado);
    return patron.test(probar);
}

function interes(){
    var valor=document.formulario1.cantidad.value;
    var resul=parseInt(valor);
    var interes=resul*0.025;
    var total=resul+interes;
    document.formulario1.sueldoI.value= "$" + total;
}

function borrar(){
    document.formulario1.sueldoI.value="";
    
}