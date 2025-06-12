let vendasDoDia  = [10.70,5.50,2.25,1.0,55.25,110.30,80.0];
let soma = 0;

let lista = new Array(10);
let precos = new Array(10);
let listaQuantidade = 0;

function atividade1L4(){
    let i;

    for(i = 0; i < vendasDoDia.length; i++){
        soma = soma + vendasDoDia[i];
    }
    window.alert(soma)
    return(soma)
}
function atividade2L4(){
    let maiorNumero = vendasDoDia[0];
    let menorNumero = vendasDoDia[0];

    for(i = 0; i < vendasDoDia.length; i++){
        if(vendasDoDia[i] > maiorNumero){
        maiorNumero = vendasDoDia[i];
        }
        if(vendasDoDia[i] < menorNumero){
            menorNumero = vendasDoDia[i];
        }
    }
    window.alert(`Compra de maior valor = ${maiorNumero} \nCompra de menor valor = ${menorNumero}. `);
}
function atividade3L4(){
    let ticketMedio = soma / vendasDoDia.length;
    window.alert(`O ticket médio é de R$${ticketMedio.toFixed(2)}. `);
    let contador;
}
function atividade4L4(){
    let lista= [ 3, 5, 6, 7, 8, 10, 22, 55, 110 ];
    let contador = 0;
    let i = 0;

    for(i; i < lista.length; i++){
        if(lista[i]%2 == 0){
            contador++;
        }
    }
    window.alert(contador);
}
function atividade5L4() {
    let opcaoSelecionada;

    do {
        opcaoSelecionada = prompt(
            "--------------------------\n" +
            " ---Lista de compras---\n" +
            "--------------------------\n\n" +
            "1 - Inserir Item\n" +
            "2 - Excluir Item\n" +
            "3 - Visualizar lista\n" +
            "0 - Sair\n\n" +
            "Selecione uma opção:"
        );

        switch (parseInt(opcaoSelecionada)) {
            case 0:
                alert("Obrigado por utilizar os nossos sistemas. Se cuide!");
                break;
            case 1:
                inserirItem();
                break;
            case 2:
                excluirItem();
                break;
            case 3:
                visualizarLista();
                break;
            default:
                alert("Opção inválida! Tente novamente.");
        }
    } while (opcaoSelecionada != 0);
}

function inserirItem() {
    if (listaQuantidade < 10) {
        let itemInserido = prompt("Qual item você deseja inserir?");
        let precoItem = parseFloat(prompt("Qual o preço desse item?"));

        lista[listaQuantidade] = itemInserido;
        precos[listaQuantidade] = precoItem;
        listaQuantidade++;

        alert("Item adicionado!");
    } else {
        alert("Lista cheia!");
    }
}

function excluirItem() {
    if (listaQuantidade === 0) {
        alert("A lista está vazia!");
        return;
    }

    let excluir = parseInt(prompt("Digite o número do item que deseja excluir:\n" + gerarLista()));

    excluir--;

    if (excluir >= 0 && excluir < listaQuantidade) {
        for (let i = excluir; i < listaQuantidade - 1; i++) {
            lista[i] = lista[i + 1];
            precos[i] = precos[i + 1];
        }
        listaQuantidade--;
        alert("Item removido!");
    } else {
        alert("Número inválido!");
    }
}

function visualizarLista() {
    if (listaQuantidade === 0) {
        alert("A lista está vazia!");
    } else {
        alert("Aqui está a sua lista:\n" + gerarLista());
    }
}

function gerarLista() {
    let resultado = "";
    for (let i = 0; i < listaQuantidade; i++) {
        resultado += `${i + 1} - ${lista[i]} (R$ ${precos[i].toFixed(2)})\n`;
    }
    return resultado;
}

document.addEventListener("DOMContentLoaded", function() {
    console.log("Scripts carregados");
    document.getElementById("btnAtividade1L4").addEventListener("click", atividade1L4);
    document.getElementById("btnAtividade2L4").addEventListener("click", atividade2L4);
    document.getElementById("btnAtividade3L4").addEventListener("click", atividade3L4);
    document.getElementById("btnAtividade4L4").addEventListener("click", atividade4L4);
    document.getElementById("btnAtividade5L4").addEventListener("click", atividade5L4);

});