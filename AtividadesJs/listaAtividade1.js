
function atividade1L1(){
let nome = window.prompt("Qual o seu Nome? ");
alert(`Bemvindo ${nome} !`);
}

function atividade2L1(){
let primeiroNumero = parseFloat(window.prompt("Digite o primeiro número: "));
let segundoNumero = parseFloat(window.prompt("Digite o segundo número: "));

alert(`O resultado da soma é: ${primeiroNumero + segundoNumero}`);
}

function atividade3L1(){
let reaisValor = parseFloat(window.prompt("Digite o valor em Reais: "));
let dolarValor = parseFloat(reaisValor / 5.25).toFixed(2);

alert(`o valor de R$${reaisValor} convertido para dólar será de ${dolarValor}`);
}

function atividade4L1(){
let numeroDigitado = parseInt(window.prompt("Digite um número: "));
let numeroAnterior = numeroDigitado - 1;
let numeroPosterior = numeroDigitado + 1;

alert(`O numero anterior de ${numeroDigitado} é ${ numeroAnterior}, seu sucessor é ${numeroPosterior}`);
}

function atividade5L1(){
let areaTerrenoLargura = parseFloat(window.prompt("Digite a largura do terreno: "));
let areaTerrenoComprimento = parseFloat(window.prompt("Digite o comprimento do terreno: "));

let areaTerreno = areaTerrenoComprimento * areaTerrenoLargura;

let valorM2 = parseFloat(window.prompt("Digite o valor do terreno po M²: "));
let valorTotal = areaTerreno * valorM2;

alert(`O valor total de um terreno de ${areaTerreno}M² é de R$${valorTotal}`);
}

function atividade6L1(){
let distanciaPercorrida = parseFloat(window.prompt("Digite a distância percorrida: "));
let consumoTotal = parseFloat(window.prompt("Digite quantos litros foram consumidos: "));

let gastoPorKM = consumoTotal / distanciaPercorrida; 

alert(`O consumo médio do veículo é de ${gastoPorKM} por Km`);
}

function atividade7L1(){
let primeiraNota = parseFloat(window.prompt("Digite o valor da primeira nota: "));
let segundaNota = parseFloat(window.prompt("Digite o valor da segunda nota: "));
let terceiraNota = parseFloat(window.prompt("Digite o valor da terceira nota: "));
let quartaNota = parseFloat(window.prompt("Digite o valor da quarta nota: "));

let mediaTotal = (primeiraNota + segundaNota + terceiraNota + quartaNota) / 4;

alert(`O valor da média do aluno foi de ${mediaTotal.toFixed(2)} pontos. `);
}

function atividade8L1(){
let valorFahrenheit = parseFloat(window.prompt("Digite o valor em Fahrenheit: "));

let valorCelsius = (valorFahrenheit -32) * 5/9;

alert(`${valorFahrenheit}° é o equivlente à ${valorCelsius.toFixed(2)}° Celsius.`);
}

document.addEventListener("DOMContentLoaded", function() {
    console.log("Scripts carregados");
    document.getElementById("btnAtividade1L1").addEventListener("click", atividade1L1);
    document.getElementById("btnAtividade2L1").addEventListener("click", atividade2L1);
    document.getElementById("btnAtividade3L1").addEventListener("click", atividade3L1);
    document.getElementById("btnAtividade4L1").addEventListener("click", atividade4L1);
    document.getElementById("btnAtividade5L1").addEventListener("click", atividade5L1);
    document.getElementById("btnAtividade6L1").addEventListener("click", atividade6L1);
    document.getElementById("btnAtividade7L1").addEventListener("click", atividade7L1);
    document.getElementById("btnAtividade8L1").addEventListener("click", atividade8L1);
});