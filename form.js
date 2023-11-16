function verificarRespuesta(){

var total = 5; 
var puntos = 0; 

var myForm = document.forms["quizform"];
var respuestas = ["a", "b","c","a","b","e","f","g"];

for(var i = 1; i < total; i++){
    if(myForm["p" + i].value === null || myForm["p" + i].value === ""){
        alert("por favor marcar todos los campos" + i);
        return false;
    }else{
        if(myForm["p" + i].value === respuestas[i - 1]){
            puntos++;
        }
        
    }
}

return false; 

}