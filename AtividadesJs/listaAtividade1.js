function atividade1(){
let nome = window.prompt("Qual o seu Nome? ");
alert(`Bemvindo ${nome} !`);
}

function atividade2 (){
let primeiroNumero = parseFloat(window.prompt("Digite o primeiro número: "));
let segundoNumero = parseFloat(window.prompt("Digite o segundo número: "));

alert(`O resultado da soma é: ${primeiroNumero + segundoNumero}`);
}

function atividade3(){
let reaisValor = parseFloat(window.prompt("Digite o valor em Reais: "));
let dolarValor = parseFloat(reaisValor / 5.25).toFixed(2);

alert(`o valor de R$${reaisValor} convertido para dólar será de ${dolarValor}`);
}

function atividade4(){
let numeroDigitado = parseInt(window.prompt("Digite um número: "));
let numeroAnterior = numeroDigitado - 1;
let numeroPosterior = numeroDigitado + 1;

alert(`O numero anterior de ${numeroDigitado} é ${ numeroAnterior}, seu sucessor é ${numeroPosterior}`);
}

function atividade5(){
let areaTerrenoLargura = parseFloat(window.prompt("Digite a largura do terreno: "));
let areaTerrenoComprimento = parseFloat(window.prompt("Digite o comprimento do terreno: "));

let areaTerreno = areaTerrenoComprimento * areaTerrenoLargura;

let valorM2 = parseFloat(window.prompt("Digite o valor do terreno po M²: "));
let valorTotal = areaTerreno * valorM2;

alert(`O valor total de um terreno de ${areaTerreno}M² é de R$${valorTotal}`);
}

function atividade6(){
let distanciaPercorrida = parseFloat(window.prompt("Digite a distância percorrida: "));
let consumoTotal = parseFloat(window.prompt("Digite quantos litros foram consumidos: "));

let gastoPorKM = consumoTotal / distanciaPercorrida; 

alert(`O consumo médio do veículo é de ${gastoPorKM} por Km`);
}

function atividade7(){
let primeiraNota = parseFloat(window.prompt("Digite o valor da primeira nota: "));
let segundaNota = parseFloat(window.prompt("Digite o valor da segunda nota: "));
let terceiraNota = parseFloat(window.prompt("Digite o valor da terceira nota: "));
let quartaNota = parseFloat(window.prompt("Digite o valor da quarta nota: "));

let mediaTotal = (primeiraNota + segundaNota + terceiraNota + quartaNota) / 4;

alert(`O valor da média do aluno foi de ${mediaTotal.toFixed(2)} pontos. `);
}

function atividade8(){
let valorFahrenheit = parseFloat(window.prompt("Digite o valor em Fahrenheit: "));

let valorCelsius = (valorFahrenheit -32) * 5/9;

alert(`${valorFahrenheit}° é o equivlente à ${valorCelsius.toFixed(2)}° Celsius.`);
}

atividade1()
atividade2()
atividade3()
atividade4()
atividade5()
atividade6()
atividade7()
atividade8()