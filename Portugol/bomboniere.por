programa {
    // Declaração global das variáveis
    cadeia produtos[9] // Vetor para armazenar os nomes dos produtos
    real precos[9] // Vetor para armazenar os preços dos produtos
    inteiro compras[9] // Vetor para armazenar a quantidade comprada de cada produto

    cadeia opcaoSelecionada

    // Função para inicializar os produtos e preços
    funcao inicializarProdutos() {
        produtos[0] = "Pipoca Grande"
        precos[0] = 20.00

        produtos[1] = "Pipoca Média"
        precos[1] = 15.00

        produtos[2] = "Pipoca Pequena"
        precos[2] = 10.00

        produtos[3] = "Refrigerante Grande"
        precos[3] = 12.00

        produtos[4] = "Refrigerante Médio"
        precos[4] = 9.00

        produtos[5] = "Refrigerante Pequeno"
        precos[5] = 6.00

        produtos[6] = "Chocolate"
        precos[6] = 10.00

        produtos[7] = "Nachos com Queijo"
        precos[7] = 18.00

        produtos[8] = "Combo Pipoca Grande + Refrigerante Grande"
        precos[8] = 23.00

        // Inicializando vetor de compras com 0
        para (inteiro i = 0; i < 9; i++) {
            compras[i] = 0
        }
    }
    // Função principal
    funcao inicio() {
        inicializarProdutos()

        escreva("-------------------------------\n")
        escreva("----------Bomboniere-----------\n")
        escreva("-------------------------------\n")

        realizarCompra()
        exibirResumoCompras()
    }


    // Função para exibir a lista de produtos
    funcao exibirProdutos() {
        escreva("\nLista de produtos:")
        para (inteiro i = 0; i < 9; i++) {
            escreva("\n", i + 1, " - ", produtos[i], ", R$: ", precos[i])
        }
        escreva("\n0 - Sair")
    }
    // Função que manipula a variável "opcaoSelecionada"
    

    // Função para processar compras
    funcao realizarCompra() {
        
        cadeia opcaoConfirmacao

        faca {
          faca{
            exibirProdutos()
            escreva("\nSelecione uma opção: ")
            leia(opcaoSelecionada)
          } enquanto(opcaoBomboniereValida() == falso)
          


            // Verifica se a opção é válida
            
            se (opcaoSelecionada >= 1 e opcaoSelecionada <= 9) {
                compras[opcaoSelecionada - 1] += 1 // Armazena a quantidade comprada

                escreva("\nVocê escolheu: ", produtos[opcaoSelecionada - 1], ", R$: ", precos[opcaoSelecionada - 1], "\n")
                faca{
                  escreva("Deseja comprar mais alguma coisa? (s/n) ")
                leia(opcaoConfirmacao)
                se(opcaoConfirmacao == "n"){
                  opcaoSelecionada = "0"
                  escreva("\nObrigado por visitar a bomboniere!\n")
                }
                senao se(opcaoConfirmacao == "S"){
                  opcaoConfirmacao = "s"
                  }
                senao se(opcaoConfirmacao == "N"){
                  opcaoConfirmacao ="n"
                  opcaoSelecionada = "0"

                }senao {
                escreva("\nOpção inválida! Tente novamente: \n")
                }
                }enquanto(opcaoConfirmacao != "s" e opcaoConfirmacao != "n")
            } 
            
            
            senao {
                escreva("\nOpção inválida! Tente novamente: \n")}
                

        } enquanto (opcaoSelecionada != "0")
    }
    funcao logico opcaoBomboniereValida(){
     se(opcaoSelecionada == "1" ou opcaoSelecionada == "2" ou opcaoSelecionada == "3" ou opcaoSelecionada == "4" ou opcaoSelecionada == "5" ou opcaoSelecionada == "6" ou opcaoSelecionada == "7" ou opcaoSelecionada == "8" ou opcaoSelecionada == "9") {
      retorne verdadeiro
    } senao {
      escreva("Opção inválida! Tente novamente:")
      retorne falso
    }
  }

    // Função para exibir o resumo das compras
    funcao exibirResumoCompras() {
      real precoTotal = 0
        escreva("\nResumo da sua compra:")
        para (inteiro i = 0; i < 9; i++) {
            se (compras[i] > 0) {
                escreva("\n", produtos[i], " - Quantidade: ", compras[i], ", Total: R$ ", compras[i] * precos[i])
                precoTotal = precoTotal + precos[i]
            }
        }
        escreva("\nValor total da compra: R$: ", precoTotal, ".\n")
    }  
}