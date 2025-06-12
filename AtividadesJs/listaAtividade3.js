function atividade1L3(){
    let limite = 60;
    let i = parseInt(window.prompt("digite um número: "));

    for(i; i < limite + 1; i++){
        window.alert(i);
    } 
}

function atividade2L3(){
    let i = 0;
    let resposta;
    let numeroDigitado = parseInt(window.prompt("Digite um número para receber a sua tabuada"));

    for(i; i < 11; i++){

        resposta = i * numeroDigitado;
        window.alert(`${numeroDigitado}x${i} = ${resposta}`); 
    }
}
function atividade3L3(){
    let numeroMenor;
    let numeroMaior;
    let numeroDigitado1 = parseInt(window.prompt("Digite um número: "));
    let numeroDigitado2 = parseInt(window.prompt("Digite outro número: "));

    if(numeroDigitado1 < numeroDigitado2){
        numeroMenor = numeroDigitado1;
        numeroMaior = numeroDigitado2;
    }
    else{
        numeroMenor = numeroDigitado2;
        numeroMaior = numeroDigitado1;
    }
    if(numeroMenor % 2 !=0){
         numeroMenor++;
    }

    window.alert(`Os pares entre ${numeroDigitado1} e ${numeroDigitado2} são: `);

    for(numeroMenor; numeroMenor <= numeroMaior; numeroMenor +=2){
        window.alert(numeroMenor);
    }
}

function atividade4L3(){
    let numeroAdivinhar = parseInt(window.prompt("Digite um número para ser adivinhado: "));
    let numeroResposta;

    do{
        

        if(numeroResposta >= numeroAdivinhar + 20 || numeroResposta <= numeroAdivinhar - 20){
            window.alert("Está frio!");
        }
        else if(numeroResposta >= numeroAdivinhar + 10 || numeroResposta <= numeroAdivinhar - 10){
            window.alert("Está morno!");
        }
        else if(numeroResposta >= numeroAdivinhar + 5 || numeroResposta <= numeroAdivinhar - 5){
            window.alert("Está quente!");
        }
        else if(numeroResposta >= numeroAdivinhar + 1 || numeroResposta <= numeroAdivinhar - 1){
            window.alert("Está fervendo!!!");
        }
        numeroResposta = parseInt(window.prompt("Adivinhe o Número: "));
    }while(numeroResposta != numeroAdivinhar);

    if(numeroResposta == numeroAdivinhar){
        window.alert(`Você Acertou !!! `);
    }
}

function atividade5L3(){
    let login = "ze@gmail.com";
    let senha = 1234;
    let contador = 0;

    do {
        login = window.prompt("Digite o login: ");
        senha = parseInt(window.prompt("Digite a senha: "));

        if (login != "ze@gmail.com" || senha != 1234){

            if (login != "ze@gmail.com" && senha != 1234) {
                window.alert("Login e senha inválidos.");
            }
            else if (login != "ze@gmail.com") {
                window.alert("Login inválido.");
            }
            else if (senha != 1234) {
                window.alert("Senha inválida.");
            }
            contador ++;
            window.alert(`contador: ${contador}`);

            if(contador == 2){
                window.alert(`Última tentativa, mais um erro seu acesso será bloqueado! `);
            }
        }

    } while ((login != "ze@gmail.com" || senha != 1234) && contador < 3);

    if (contador == 3) {
        window.alert("Acesso bloqueado!");
    }
    else {
        window.alert("Seja bem-vindo!");
    }
}
function atividade6L3(){
    let piramideAndares = parseInt(window.prompt("Digite o número de andares:"));
    let i, j, k;
    let resultado = "";

    for(i = 1; i <= piramideAndares; i++){
        let linha = "";

        for(j = 0; j < piramideAndares - i; j++)
            linha += " ";

        for(k = 0; k < i; k++)
            linha += "* ";

        resultado += linha + "\n";
    }
    window.alert(resultado);
}

function atividade7L3(){
    let alturaRetangulo = parseInt(window.prompt("digite a altura que deseja no Retângulo"));
    let larguraRetangulo = parseInt(window.prompt("digite a largura que deseja no Retângulo"));
    let resultado = "";

    for(i = 0; i < alturaRetangulo; i++){
        let linha ="";
        for(j = 0; j < larguraRetangulo; j++){
            linha += "*   ";
        }
        resultado += linha +"\n";
    }
    window.alert(resultado);
}

document.addEventListener("DOMContentLoaded", function() {
    console.log("Scripts carregados");
    document.getElementById("btnAtividade1L3").addEventListener("click", atividade1L3);
    document.getElementById("btnAtividade2L3").addEventListener("click", atividade2L3);
    document.getElementById("btnAtividade3L3").addEventListener("click", atividade3L3);
    document.getElementById("btnAtividade4L3").addEventListener("click", atividade4L3);
    document.getElementById("btnAtividade5L3").addEventListener("click", atividade5L3);
    document.getElementById("btnAtividade6L3").addEventListener("click", atividade6L3);
    document.getElementById("btnAtividade7L3").addEventListener("click", atividade7L3);

});