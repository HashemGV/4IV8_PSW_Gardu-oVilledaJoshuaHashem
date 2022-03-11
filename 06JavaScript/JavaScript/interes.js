function validar(e){
    teclado=(document.all)?e.keyCode:e.w;
    /*vaqmos a aplicar una prueba logica a todo el teclado a partir
    de un patrón, este patrón debe de ser numérico y solo acepta
    del 0 a 9. Todo lo demas lo deja escapar*/
    if(Teclado==8)return true;
    var patrón=/[0_9\d .]/;
    var probar=String.fromCharCode(teclado);
    return probar.test(probar)
}