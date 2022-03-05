function validar(capital){
    if(formulario.capital.value.length<100,000){
        alert("Escriba una cantidad en el rango de 100,000 y 1,000,000.00");
        formulario.capital.focus();
        return false;
    }
    if(formulario.capital.value.length>1,000,000){
        alert("Escriba una cantidad en el rango de 100,000 y 1,000,000");
        formulario.capital.focus();
        return false;
    }
    if(formulario.interes.value.length<10){
        alert("La tasa de Interes tiene que ser minimo del 10%");
        formulario.interes.focus();
        return false;
    }
}

document.getElementById("add").onclick=function(){
    var capital_text=document.getElementById("capital").value;
    var td_capital_node=document.createElement("td");
    var capital_text_node=document.createTextNode(capital_text);
    td_capital_node.appendChild(capital_text_node);

    var interes_text=document.getElementById("interes").value;
    var td_interes_node=document.createElement("td")
    var interes_text_node=document.createTextNode(interes_text);
    td_interes_node.appendChild(interes_text_node);
    
    var plazo_text=document.getElementById("plazo").value;
    var td_plazo_node=document.createElement("td");
    var plazo_text_node=document.createTextNode(plazo_text);
    td_plazo_node.appendChild(plazo_text_node);

    var ele_a=document.createElement("a");
    ele_a.setAttribute("href","javascript:void(0);");
    ele_a.setAttribute("onclick","del_tr(this);");
    var borrar_node=document.createTextNode("Eliminar");
    ele_a.appendChild(borrar_node);
    var td_borrar_node=document.createElement("td");
    td_borrar_node.appendChild(ele_a);

    var tr_node=document.createElement("tr");
    tr_node.appendChild(td_capital_node);
    tr_node.appendChild(td_interes_node);
    tr_node.appendChild(td_plazo_node);
    tr_node.appendChild(td_borrar_node);
    var tabla_node=document.getElementsByTagName("table")[0];
    tabla_node.appendChild(tr_node);
}

del_tr=function(obj){
    var tabla_node = obj.parentNode.parentNode.parentNode;
    tabla_node.removeChild(obj.parentNode.parentNode);
}