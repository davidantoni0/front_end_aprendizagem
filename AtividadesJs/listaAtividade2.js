function atividade1(){
    let numeroDigitado = parseInt(window.prompt("Digite um número: "));

    if( numeroDigitado == 0){
        alert(`O número digitado é zero. `);
    }
    else{
        if(numeroDigitado % 2 == 0){
            alert(`O número digitado é par. `);
        }
        else{
            alert(`O número digitado é ímpar. `);
        }
    }
}

function atividade2(){
    let primeiroNumero = parseInt(window.prompt("Digite um número: "));
    let segundoNumero = parseInt(window.prompt("Digite outro número: "));
    
    if(primeiroNumero == segundoNumero){
        alert(`${primeiroNumero} e ${segundoNumero} possuem o mesmo valor.`)
    }
    else{
        if(primeiroNumero > segundoNumero){
            alert(`${primeiroNumero} é maior que ${segundoNumero}.`)
        }
        else{
            alert(`${primeiroNumero} é menor que ${segundoNumero}.`)
        }
    }
}

function atividade3(){
    let Opção1 = window.prompt("Você possui mais de 65 anos?(s/n)").toLowerCase();
    let Opção2 = window.prompt("Você possui deficiência?(s/n)").toLowerCase();
    let Opção3 = window.prompt("Você é gestante?(s/n)").toLowerCase();

    if(Opção1 == 's' || Opção2 == 's' || Opção3 == 's'){
        alert(`fila preferencial`);
    }
    else{
        alert(`Fila Comum`);
    }
}

function atividade4(){

    let idadeInserida;
    
    do{
        idadeInserida = parseInt(window.prompt("Quantos anos você tem? "));

        if(idadeInserida >= 0 && idadeInserida <= 15){
            window.alert(`Voçê não está permitido à entrar`);
        }

        else if(idadeInserida >= 16 && idadeInserida <= 17){
            window.alert(`Entrada permitida apenas acompanhado à um responsável.`);
        }
        else if(idadeInserida >= 18 && idadeInserida <= 79){
            window.alert(`Entrada permitida.`);
        }

        else if(idadeInserida >= 80 && idadeInserida <= 140){
            window.alert(`Entrada permitida apenas acompanhado à um responsável ou "termo de isenção de responsabilidade" assinado.`);
        }

        else{
            window.alert(`Número inserido inválido.`);
        }
    } while(idadeInserida > 140 || idadeInserida < 0);

}
function atividade5(){
    let login = "ze@gmail.com";
    let senha = 1234;

    do {
        login = window.prompt("Digite o login: ");
        senha = parseInt(window.prompt("Digite a senha: "));

        if (login != "ze@gmail.com" && senha != 1234) {
            window.alert("Login e senha inválidos.");
        }
        else if (login != "ze@gmail.com") {
            window.alert("Login inválido.");
        }
        else if (senha != 1234) {
            window.alert("Senha inválida.");
        }
        else {
            window.alert("Seja bem-vindo!");
        }
    } while (login != "ze@gmail.com" || senha != 1234);
}
function atividade6(){
    let resposta1;
    let resposta2;
    let resposta3;
    let contador = 1;

    while(resposta1 != 10 && contador < 4){
        resposta1 = parseInt(window.prompt("Quanto é 2x5? "));

        if(resposta1 != 10){
            window.alert(`Você errou` );
            contador ++;
        }
        else{
            window.alert(`Você acertou! `);
        }
    }

    while(resposta2 != 20 && contador < 4){
        resposta2 = parseInt(window.prompt("Quanto é 2x10? "));

        if(resposta2 != 20){
            window.alert(`Você errou` );
            contador ++;
        }
        else{
            window.alert(`Você acertou! `);
        }
    }
    
    while(resposta3 != 30 && contador < 4){
        resposta3 = parseInt(window.prompt("Quanto é 2x15? "));

        if(resposta3 != 30){
            window.alert(`Você errou` );
            contador ++;
        }
        else{
            window.alert(`Você acertou! `);
        }
    }


        if(contador == 4){
            window.alert(`Limite de tentativas atingido! `);
        }
        else{
            window.alert(`Parabéns, você acertou todas e usou ${contador} tentativa(s). `);
        }
}

atividade1()
atividade2()
atividade3()
atividade4()
atividade5()
atividade6()