function validar(e){
    var teclado=(document.all)?e.KeyCode : e.which;
    if(teclado==8) return true;
    var patron=/[0-9\d .]/;
    var probar=String.fromCharCode(teclado);
    return patron.test(probar);
}