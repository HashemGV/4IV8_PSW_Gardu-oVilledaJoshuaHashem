//Problema 1 
    
function problema1(){
    var p1_input=document.querySelector('#p1-input').value;
    var p1_array=p1_input.split(" ").reverse();
    var p1_res=""
    p1_array.forEach(function(palabra,i){
        if(i !=0 || i !=p1_array.length)p1_res+=' ';
        p1_res+=palabra;
    });
    document.querySelector('#p1-output').textContent=p1_res;
}
 //Problema 2

function problema2(){
    p2_x1=document.querySelector("#p2-x1").value;
    p2_x2=document.querySelector("#p2-x2").value;
    p2_x3=document.querySelector("#p2-x3").value;
    p2_x4=document.querySelector("#p2-x4").value;
    p2_x5=document.querySelector("#p2-x5").value;
    p2_y1=document.querySelector("#p2-y1").value;
    p2_y2=document.querySelector("#p2-y2").value;
    p2_y3=document.querySelector("#p2-y3").value;
    p2_y4=document.querySelector("#p2-y4").value;
    p2_y5=document.querySelector("#p2-y5").value;
    var v1=[p2_x1,p2_x2,p2_x3,p2_x4,p2_x5];
    var v2=[p2_y1,p2_y2,p2_y3,p2_y4,p2_y5];
    v1=v1.sort(function (a,b){
        return b-a;
    });
    v2=v2.sort(function (a,b){
       return b-a;
    });
    v2=v2.reverse();
    var p2_multi=0;
    for(var i=0; i< v1.length; i++){
        p2_multi+=v1[i]*v2[i];
    }
    document.querySelector('#p2-output').textContent="Producto escalar minimo: "+p2_multi;
}

//problema 3
function problema3(){
    //definir un alfabeto osiosi
    var alfabeto=['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 
        'N', 'Ñ', 'O', 'P', 'Q', 'R', 'S', 'T','U', 'V', 'W', 'X', 'Y', 'Z'];
    //vamos a obtener la entrada de los datos
    var p3_input=document.querySelector('#p3-input').value;
    var p3_palabras=p3_input.split(',');
    //tengo que eliminar los espacios
    p3_palabras=p3_palabras.map(function (palabra){
        //crear una expresion que me recupere las palabras
        return palabra.replace(/\s/g, '').toUpperCase();
    });
    //tengo que calcular cuantos caracteres unicos hay
    var p3_res='';
    p3_palabras.forEach(function (palabra, i){
        //separar las palabras actuales del array que contiene cada letra de dicha palabra
        var letras_unicas=[];
        var palabra_array=palabra.split('');
        //iteracion prra
        alfabeto.forEach(function (letra, J){
            //itero la palabra
            palabra_array.forEach(function (letras_palabras, k){
                //comprobar que la letra este dentro del alfabeto
                if(letras_palabras==letra){
                    //si la letra no la hemos contado la agregamos a un array para contar las letras unicas
                    if(letras_unicas.indexOf(letra)<0){
                        letras_unicas.push(letra);
                    }
                }
            });
        });
        p3_res+='Palabra: '+palabra+' = '+letras_unicas.length+'\n';
    });
    document.querySelector('#p3-output').textContent=p3_res;
}