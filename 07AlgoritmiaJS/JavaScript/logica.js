//problema 3

function problema3(){
    //definir un alfabeto osiosi
    var alfabeto=['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M','N',
                 'Ñ', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    //vamos a obtener la entrada de los datos
    var p3_input=document.querySelector('#p3-input').value;
    var p3_palabras=p3_input.split(',');
    //tengo q eliminar espacios
    p3_palabras=p3_palabras.map(function (palabra){
        //crear una expresion q me recupere las palabras
        return palabra.replace(/\s/g, '').toUpperCase;
    });
    //tengo q calcular cuantos caracteres unicos hay
    var p3_res='';
    p3_palabras.forEach(function (palabra, i){
        //separar las palabras actuales del array q contiene cada letra de dicha palabra
        var letras_unicas=[]
        var palabra_array=palabra.split('');
        //iteracipon prra
        alfabeto.forEach(function (letra, j){
            //itero la palabra
            palabra_array.forEach(function (letras_palabras, k){
                //comprobar q la letra este dentro del alfabeto
                if(letras_palabras==letra){
                    //si la letra no la hemos contado la agregamos a un array para contar las letras unicas
                    if(letras_unicas.indexOf(letra)<0){
                        letras_unicas.push(letra)
                    }
                }
            });
        });
        p3_res+='palabra: ' + palabra + ' = ' + letras_unicas.length + '\n';
    });
    document.querySelector('#p3-output').textContent=p3_res;
}