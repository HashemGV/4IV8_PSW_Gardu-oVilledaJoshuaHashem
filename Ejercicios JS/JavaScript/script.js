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
    document.formulario2.ventas.value="";
    document.formulario2.sueldo.value="";
    document.formulario2.comi.value="";
    document.formulario2.sueldototal.value="";
    document.formulario3.precio.value="";
    document.formulario3.descuentop.value="";
    document.formulario4.promedio.value="";
    document.formulario4.examenf.value="";
    document.formulario4.trabajof.value="";
    document.formulario4.califf.value="";
    document.formulario5.talumnos.value="";
    document.formulario5.nalumnosh.value="";
    document.formulario5.nalumnosm.value="";
    document.formulario5.alumnosh.value="";
    document.formulario5.alumnosm.value="";
}

function comision(){
    var valorc=document.formulario2.ventas.value;
    var ventas=parseInt(valorc);
    var comision=ventas*0.10;
    var resultado=comision;
    document.formulario2.comi.value="$"+resultado;
}

function sueldoT(){
    var valors=document.formulario2.sueldo.value;
    var sueldo=parseInt(valors);
    var valorc=document.formulario2.comi.value;
    var comis=parseInt(valorc);
    var ressul=sueldo+comis;
    document.formulario2.sueldototal.value="$"+ressul;
}

function descuento(){
    var valorp=document.formulario3.precio.value;
    var precio=parseInt(valorp);
    var descuento=precio*0.15;
    var total=precio-descuento;
    document.formulario3.descuentop.value="$"+total;
}

function calificacion(){
    var valorp=document.formulario4.promedio.value;
    var promedio=parseInt(valorp);
    var porcprom=promedio*0.55;
    var valore=document.formulario4.examenf.value;
    var examen=parseInt(valore);
    var porcexam=examen*0.30;
    var valort=document.formulario4.trabajof.value;
    var trabajo=parseInt(valort);
    var porctrab=trabajo*0.15;
    var calift=porcprom+porcexam+porctrab;
    document.formulario4.califf.value=calift;
}

function alumnos(){
    var vtalumn=document.formulario5.talumnos.value;
    var talumnos=parseInt(vtalumn);
    var valumnh=document.formulario5.nalumnosh.value;
    var nalumnosh=parseInt(valumnh);
    var valumnm=document.formulario5.nalumnosm.value;
    var nalumnosm=parseInt(valumnm);
    var porcalumnh=(nalumnosh*100)/talumnos;
    document.formulario5.alumnosh.value=porcalumnh+"%";
    var porcalumnm=(nalumnosm*100)/talumnos;
    document.formulario5.alumnosm.value=porcalumnm+"%";
}

function edad(){
    var vañon=document.formulario6.añon.value;
    var añon=parseInt(vañon);
    var vañoa=document.formulario6.añoa.value;
    var añoa=parseInt(vañoa);
    var vedad=añoa-añon;
    document.formulario6.edad.value=vedad+"años";
}