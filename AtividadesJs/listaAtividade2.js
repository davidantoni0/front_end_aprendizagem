atividade3()

function atividade1(){
    let numeroDigitado = parseInt(window.prompt("Digite um número: "));

    if( numeroDigitado == 0){
        alert(`O número digitado é zero. `)
    }
    else{
        if(numeroDigitado % 2 == 0){
            alert(`O número digitado é par. `)
        }
        else{
            alert(`O número digitado é ímpar. `)
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