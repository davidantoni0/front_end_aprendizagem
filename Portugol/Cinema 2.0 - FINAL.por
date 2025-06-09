programa
{
  //BIBLIOTECAS
  /*-----------------------------------------------------------------------------------*/
 
    inclua biblioteca Calendario --> C
    inclua biblioteca Texto
    inclua biblioteca Matematica --> Mat
  
  /*-----------------------------------------------------------------------------------*/

  //CONSTANTES
  /*-----------------------------------------------------------------------------------*/

    const inteiro IDADE_MENOR = 18
    const inteiro IDADE_IDOSO = 60
    const inteiro FILEIRA_POLTRONA = 5
    const inteiro COLUNA_POLTRONA = 5
    const inteiro QTD_FILMES = 5
    const inteiro QTD_SESSOES = 2
    const inteiro QTD_PRODUTO = 10

    const real PRECO_INTEIRA = 30.0
    const real PRECO_MEIA = 12.5

  /*-----------------------------------------------------------------------------------*/

  //VARIAVEIS GLOBAIS
  /*-----------------------------------------------------------------------------------*/

    //Matriz das poltronas
    inteiro Matriz_Filme01[FILEIRA_POLTRONA][COLUNA_POLTRONA]
    inteiro Matriz_Filme02[FILEIRA_POLTRONA][COLUNA_POLTRONA]
    inteiro Matriz_Filme03[FILEIRA_POLTRONA][COLUNA_POLTRONA]
    inteiro Matriz_Filme04[FILEIRA_POLTRONA][COLUNA_POLTRONA]
    inteiro Matriz_Filme05[FILEIRA_POLTRONA][COLUNA_POLTRONA]

    //Matriz nome dos filmes
    cadeia Matriz_nome_filmes[QTD_FILMES][QTD_SESSOES]

    //Matriz quantidade de cadeiras vagas
    inteiro Matriz_qtde_poltronas[QTD_FILMES][2]

    //Matriz nome dos produtos
    cadeia Matriz_nome_produto[QTD_PRODUTO]

    //Matriz dados dos produtos
    real Matriz_dados_produtos[QTD_PRODUTO][2]

    //Matriz das vendas de ingressos
    inteiro Matriz_contagem_ingressos[QTD_FILMES][3]

    //Matriz produtos selecionados
    real Matriz_produtos_cliente[QTD_PRODUTO][2]
 
  /*-----------------------------------------------------------------------------------*/


  //FUNÇÃO PRINCIPAL
  /*-----------------------------------------------------------------------------------*/
  
    funcao inicio() 
    {
      inteiro opcao, i, j

      //Popula a matriz nome
       para(i = 0; i < QTD_FILMES; i++)
          para(j = 0; j < QTD_SESSOES; j++)
            Matriz_nome_filmes[i][j] = nomes_filmes(i, j)

      //Popula a matriz dos filmes
        completa_matriz_poltrona()

      //Popula as matrizes de produtos
        completa_matriz_produto()

      //Popula a matriz venda ingresso
        completa_matriz_venda_ingresso()

      faca
      {
      //Exibe menu principal
        opcao = menu_principal() 
      
      escolha(opcao)
        {
          caso 1:
            venda()
            pare
          caso 2:
            bomboniere()
            pare
          caso 3:
            saldo()
            pare
        }
      }enquanto(opcao != 0)

      escreva("\nAté mais!\n\n")

    }
  /*-----------------------------------------------------------------------------------*/

  //DESIGN
  /*-----------------------------------------------------------------------------------*/

    // Função que pausa a tela até o usuário pressionar ENTER
      funcao pausar_tela()
      {
          cadeia tecla_pressionada
          escreva("\nPressione ENTER para continuar...\n\n")
          leia(tecla_pressionada)
      }

    // Logomarca
      funcao logo()
      {
        limpa()
        escreva("\n\n-------------- CINE SENAI --------------\n")
        escreva("Conectando mundos, transformando emoções\n")
        escreva("----------------------------------------\n\n")
      }

    // Título Tipo de Ingresso
      funcao tipo_ingresso()
      {
        escreva("----------------------------------------\n")
        escreva("            TIPO DE INGRESSO            \n")
        escreva("----------------------------------------\n\n")
      }

    // Título Escolha de Filme
      funcao escolha_filme()
      {
        escreva("----------------------------------------\n")
        escreva("            ESCOLHA DE FILME            \n")
        escreva("----------------------------------------\n\n")
      }

    // Título Escolha de Poltrona
      funcao escolha_poltrona()
      {
        escreva("----------------------------------------\n")
        escreva("          ESCOLHA DE POLTRONA           \n")
        escreva("----------------------------------------\n\n")
      }

    //  Título Bomboniere
      funcao titulo_bomboniere()
      {
        escreva("----------------------------------------\n")
        escreva("               BOMBONIERE               \n")
        escreva("----------------------------------------\n\n")
      }

     // Título Saldo
      funcao titulo_saldo()
      {
        escreva("----------------------------------------\n")
        escreva("                  SALDO                 \n")
        escreva("----------------------------------------\n\n")
      }
  /*-----------------------------------------------------------------------------------*/

  //MENUS
  /*-----------------------------------------------------------------------------------*/

    //MENU PRINCIPAL
    /*=================================================================================*/
      funcao inteiro menu_principal()
      {
        //DETERMINANDO VARIÁVEIS
        inteiro i, opcao
        
        faca
        {
          //Logo
          logo()

          //Imprimindo o menu
          escreva("Escolha a opção desejada:\n")
          escreva("1 - Venda de Ingressos\n")
          escreva("2 - Bomboniere\n")
          escreva("3 - Saldo\n")
          escreva("0 - Sair\n\n")

          //Lendo a saida do menu
          escreva("Resposta: ")
          leia(opcao)
        }enquanto((opcao<0) ou (opcao>3))
        retorne opcao
      }
    /*=================================================================================*/

    //MENU BOMBONIERE
    /*=================================================================================*/
      // Função para exibir a lista de produtos
        funcao inteiro produtos_bomboniere()
        {
          inteiro i, j, opcao
          faca
          {
            //Logo
              logo()
            
            //Título do menu
              titulo_bomboniere()
            
            //Menu
              escreva("Escolha um produto:\n")
              escreva("---------------------------------------------------------------------------\n")
              escreva("	  Opção                     Produto                       Preço(R$)\n")
              escreva("  	  1    ", Matriz_nome_produto[0],"      ",Matriz_dados_produtos[0][0],"\n")
              escreva("  	  2                   ", Matriz_nome_produto[1],"                      ",Matriz_dados_produtos[1][0],"\n")
              escreva("  	  3                    ", Matriz_nome_produto[2],"                       ",Matriz_dados_produtos[2][0],"\n")
              escreva("  	  4                   ", Matriz_nome_produto[3],"                       ",Matriz_dados_produtos[3][0],"\n")
              escreva("  	  5               ", Matriz_nome_produto[4],"                    ",Matriz_dados_produtos[4][0],"\n")
              escreva("  	  6                ", Matriz_nome_produto[5],"                     ",Matriz_dados_produtos[5][0],"\n")
              escreva("  	  7               ", Matriz_nome_produto[6],"                     ",Matriz_dados_produtos[6][0],"\n")
              escreva("  	  8                ", Matriz_nome_produto[7],"                      ",Matriz_dados_produtos[7][0],"\n")
              escreva("  	  9                 ", Matriz_nome_produto[8],"                       ",Matriz_dados_produtos[8][0],"\n")   
              escreva("  	 10                    ", Matriz_nome_produto[9],"                          ",Matriz_dados_produtos[9][0],"\n")
              escreva("---------------------------------------------------------------------------\n")

              escreva("Resposta: ")
              leia(opcao)
          } enquanto((opcao < 1) ou (opcao > 10))

          retorne (opcao - 1)
        }
    /*=================================================================================*/

  /*-----------------------------------------------------------------------------------*/

 

  //FUNÇÕES
  /*-----------------------------------------------------------------------------------*/
    
    //FUNÇÃO VENDA
    /*=================================================================================*/
      
      funcao  venda()
      {
        //Variáveis
          inteiro ingresso, filme, poltrona, saida[3]

        //Teste de Ingresso
          ingresso = teste_ingresso()

        //Escolha do Filme
          filme = escolher_filme()

        //Escolher poltrona
          poltrona = escolher_poltrona(filme)

        //Enviar dados para a contabilidade
          se(ingresso == 0)
            Matriz_contagem_ingressos[filme][1]=Matriz_contagem_ingressos[filme][1]+1

          se(ingresso == 1)
            Matriz_contagem_ingressos[filme][2]=Matriz_contagem_ingressos[filme][2]+1
     
      }

      //Teste de Ingresso
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao inteiro teste_ingresso()
        {
          //Variáveis
          inteiro idade, escola, deficiencia, tipo
          
          //Teste de idade
            idade = teste_idade()
          se(idade == 0)
          {
            //Teste de escola
              escola = teste_escola()
            se(escola == 2)
            {
              //Teste de deficiência
                deficiencia = teste_deficiencia()
              se(deficiencia == 2)
              {
                //Saida para Ingresso integral
                  tipo = 1
                  escreva("\nSeu ingresso será inteira!\n")
                  escreva("Valor a pagar: R$ ", Mat.arredondar(PRECO_INTEIRA,2), "\n\n")
                  pausar_tela()
              }
            
            }
          }

          se((idade == 1) ou (escola == 1) ou (deficiencia == 1))
          {
            //Saida para Ingresso meia
              tipo = 0
              escreva("\nSeu ingresso será meia!\n")
              escreva("Valor a pagar: R$ ", Mat.arredondar(PRECO_MEIA,2), "\n\n")
              pausar_tela()
          }

          retorne tipo
        }

        //Teste de idade
          funcao inteiro teste_idade()
          {
            //Variáveis
              inteiro dia_nascimento, mes_nascimento, ano_nascimento, idade_calculada, ano_atual, mes_atual, dia_atual, resposta

            //Logo
             logo()

            //Tipo do procedimento
              tipo_ingresso()

            //Leitura da data de nascimento
              escreva("Digite o dia de nascimento: ")
              leia(dia_nascimento)
              escreva("Digite o mês de nascimento (em números): ")
              leia(mes_nascimento)
              escreva("Digite o ano de nascimento: ")
              leia(ano_nascimento)

            //Leitura da data atual
              ano_atual = C.ano_atual()
              mes_atual = C.mes_atual()
              dia_atual = C.dia_mes_atual()

            //Cálculo da idade
              idade_calculada = ano_atual - ano_nascimento

            // Verifica se o aniversário já ocorreu no ano atual
              se ((mes_atual < mes_nascimento) ou ((mes_atual == mes_nascimento) e (dia_atual < dia_nascimento)))
                idade_calculada = idade_calculada - 1

            //Verificar se a pessoa é menor de idade ou idoso
              se((idade_calculada < IDADE_MENOR) ou (idade_calculada >= IDADE_IDOSO))
                resposta = 1
              senao
                resposta = 0
            
            retorne resposta
          }

        //Teste de escola
          funcao inteiro teste_escola()
          {
            //Variáveis
              inteiro resposta

            faca
            {
              //Logo
                logo()

              //Tipo do procedimento
                tipo_ingresso()

              //Leitura da escolaridade            
                escreva("Está matriculado em uma instituição de ensino?\n")
                escreva("1 - Sim\n")
                escreva("2 - Não\n\n")
                escreva("Resposta: ")
                leia(resposta)
            }enquanto((resposta != 1) e (resposta != 2))
            
            retorne resposta
          }

        //Teste deficiência
          funcao inteiro teste_deficiencia()
          {
            //Variáveis
              inteiro resposta
            
            faca
              {
                //Logo
                  logo()

                //Tipo do procedimento
                  tipo_ingresso()

                //Leitura da deficiência           
                  escreva("Possui alguma deficiência?\n")
                  escreva("1 - Sim\n")
                  escreva("2 - Não\n\n")
                  escreva("Resposta: ")
                  leia(resposta)
              }enquanto((resposta != 1) e (resposta != 2))
            
            retorne resposta
          }
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

      //Escolha do Filme
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao inteiro escolher_filme()
        {
          //Variáveis
            inteiro filme, opcao
          faca
          {
            //Contar as cadeiras vagas
              poltrona_vaga()
            //Logo
              logo()

            //Tipo de procedimento
              escolha_filme()        
            
            //Menu filme
              escreva("Escolha uma das opções de filme:\n")
              escreva("  Opção	              Filme			              Horário      Nº de Cadeiras\n")
              escreva("---------------------------------------------------------------------------\n")
              escreva("    1		        ", Matriz_nome_filmes[0][0],"	           ", Matriz_nome_filmes[0][1],"             ", Matriz_qtde_poltronas[0][1],"\n")
              escreva("    2		", Matriz_nome_filmes[1][0],"	 ", Matriz_nome_filmes[1][1],"             ", Matriz_qtde_poltronas[1][1],"\n")
              escreva("    3		          ", Matriz_nome_filmes[2][0],"							   ", Matriz_nome_filmes[2][1],"             ", Matriz_qtde_poltronas[2][1],"\n")
              escreva("    4		            ", Matriz_nome_filmes[3][0],"							     ", Matriz_nome_filmes[3][1],"             ", Matriz_qtde_poltronas[3][1],"\n")
              escreva("    5		        ", Matriz_nome_filmes[4][0],"						   ", Matriz_nome_filmes[4][1],"             ", Matriz_qtde_poltronas[4][1],"\n")
              escreva("---------------------------------------------------------------------------\n\n")

              escreva("Resposta: ")
              leia(filme)
          }enquanto((filme < 1) ou (filme > 5))
          pausar_tela()
          retorne (filme-1)  
        }


      
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

      //Contar poltrona vaga
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao poltrona_vaga()
        {
          //Variáveis
            inteiro i, j, k, contador

          para(i = 0; i < QTD_FILMES; i++)
            escolha(i)
            {
              caso 0:
                //Zerando contador
                  contador = 0
                //Contando Matriz_Filme01
                  para(j = 0; j < FILEIRA_POLTRONA; j++)
                    para(k = 0; k < COLUNA_POLTRONA; k++)
                    {
                      se(Matriz_Filme01[j][k]==0)
                        contador++
                    }
                  Matriz_qtde_poltronas[i][0] = 1 
                  Matriz_qtde_poltronas[i][1] = contador
                pare
              caso 1:
                //Zerando contador
                  contador = 0
                //Contando Matriz_Filme02
                    para(j = 0; j < FILEIRA_POLTRONA; j++)
                      para(k = 0; k < COLUNA_POLTRONA; k++)
                      {
                        se(Matriz_Filme02[j][k]==0)
                          contador++
                      }
                    Matriz_qtde_poltronas[i][0] = 2
                    Matriz_qtde_poltronas[i][1] = contador
                pare
              caso 2:
                //Zerando contador
                  contador = 0
                //Contando Matriz_Filme03
                  para(j = 0; j < FILEIRA_POLTRONA; j++)
                    para(k = 0; k < COLUNA_POLTRONA; k++)
                    {
                      se(Matriz_Filme03[j][k]==0)
                        contador++
                    }
                  Matriz_qtde_poltronas[i][0] = 3
                  Matriz_qtde_poltronas[i][1] = contador
                pare
              caso 3:
                //Zerando contador
                  contador = 0
                //Contando Matriz_Filme04
                  para(j = 0; j < FILEIRA_POLTRONA; j++)
                    para(k = 0; k < COLUNA_POLTRONA; k++)
                    {
                      se(Matriz_Filme04[j][k]==0)
                        contador++
                    }
                  Matriz_qtde_poltronas[i][0] = 4
                  Matriz_qtde_poltronas[i][1] = contador
                pare
              caso 4:
                //Zerando contador
                  contador = 0
                //Contando Matriz_Filme05
                  para(j = 0; j < FILEIRA_POLTRONA; j++)
                    para(k = 0; k < COLUNA_POLTRONA; k++)
                    {
                      se(Matriz_Filme05[j][k]==0)
                        contador++
                    }
                  Matriz_qtde_poltronas[i][0] = 5
                  Matriz_qtde_poltronas[i][1] = contador
                pare
            }
        } 
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

      //Escolher poltrona
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao inteiro escolher_poltrona(inteiro filme)
        {
          caracter aux
          inteiro i, j, verifica       

          faca
          {
            //Logo
             logo()

            //Tipo de operação
              escolha_poltrona()
          
            //Mapa de poltronas

              escreva(Matriz_nome_filmes[filme][0]," - sessão das ", Matriz_nome_filmes[filme][1],"\n\n")
              escreva("Poltronas disponíveis:\n\n")

              escreva(" --------------------------------------------------------------------------------------------------------------------------\n")
              escreva("|                                                          TELA                                                            |\n")
              escreva(" --------------------------------------------------------------------------------------------------------------------------\n")
              escreva("	            1	              				2	              				3					              4					               5\n")
              escreva("	   -------------------		 -------------------		 --------------------		 --------------------		 --------------------\n")
              escolha(filme+1)
              {
                caso 1:
                  escreva("A	  |", transforma(Matriz_Filme01[0][0]),"|		|", transforma(Matriz_Filme01[0][1]),"|		|", transforma(Matriz_Filme01[0][2]),"|		|", transforma(Matriz_Filme01[0][3]),"|		|", transforma(Matriz_Filme01[0][4]),"|\n")
                  pare
                caso 2:
                  escreva("A	  |", transforma(Matriz_Filme02[0][0]),"|		|", transforma(Matriz_Filme02[0][1]),"|		|", transforma(Matriz_Filme02[0][2]),"|		|", transforma(Matriz_Filme02[0][3]),"|		|", transforma(Matriz_Filme02[0][4]),"|\n")
                  pare
                caso 3:
                  escreva("A	  |", transforma(Matriz_Filme03[0][0]),"|		|", transforma(Matriz_Filme03[0][1]),"|		|", transforma(Matriz_Filme03[0][2]),"|		|", transforma(Matriz_Filme03[0][3]),"|		|", transforma(Matriz_Filme03[0][4]),"|\n")
                  pare
                caso 4:
                  escreva("A	  |", transforma(Matriz_Filme04[0][0]),"|		|", transforma(Matriz_Filme04[0][1]),"|		|", transforma(Matriz_Filme04[0][2]),"|		|", transforma(Matriz_Filme04[0][3]),"|		|", transforma(Matriz_Filme04[0][4]),"|\n")
                  pare
                caso 5:
                  escreva("A	  |", transforma(Matriz_Filme05[0][0]),"|		|", transforma(Matriz_Filme05[0][1]),"|		|", transforma(Matriz_Filme05[0][2]),"|		|", transforma(Matriz_Filme05[0][3]),"|		|", transforma(Matriz_Filme05[0][4]),"|\n")
                  pare
              }
              escreva("	   -------------------		 -------------------		 --------------------		 --------------------		 --------------------\n\n")
              
              escreva("	   -------------------		 -------------------		 --------------------		 --------------------		 --------------------\n")
              escolha(filme+1)
              {
                caso 1:
                  escreva("B	  |", transforma(Matriz_Filme01[1][0]),"|		|", transforma(Matriz_Filme01[1][1]),"|		|", transforma(Matriz_Filme01[1][2]),"|		|", transforma(Matriz_Filme01[1][3]),"|		|", transforma(Matriz_Filme01[1][4]),"|\n")
                  pare
                caso 2:
                  escreva("B	  |", transforma(Matriz_Filme02[1][0]),"|		|", transforma(Matriz_Filme02[1][1]),"|		|", transforma(Matriz_Filme02[1][2]),"|		|", transforma(Matriz_Filme02[1][3]),"|		|", transforma(Matriz_Filme02[1][4]),"|\n")
                  pare
                caso 3:
                  escreva("B	  |", transforma(Matriz_Filme03[1][0]),"|		|", transforma(Matriz_Filme03[1][1]),"|		|", transforma(Matriz_Filme03[1][2]),"|		|", transforma(Matriz_Filme03[1][3]),"|		|", transforma(Matriz_Filme03[1][4]),"|\n")
                  pare
                caso 4:
                  escreva("B	  |", transforma(Matriz_Filme04[1][0]),"|		|", transforma(Matriz_Filme04[1][1]),"|		|", transforma(Matriz_Filme04[1][2]),"|		|", transforma(Matriz_Filme04[1][3]),"|		|", transforma(Matriz_Filme04[1][4]),"|\n")
                  pare
                caso 5:
                  escreva("B	  |", transforma(Matriz_Filme05[1][0]),"|		|", transforma(Matriz_Filme05[1][1]),"|		|", transforma(Matriz_Filme05[1][2]),"|		|", transforma(Matriz_Filme05[1][3]),"|		|", transforma(Matriz_Filme05[1][4]),"|\n")
                  pare
              }
              escreva("	   -------------------		 -------------------		 --------------------		 --------------------		 --------------------\n\n")

              escreva("	   -------------------		 -------------------		 --------------------		 --------------------		 --------------------\n")
              escolha(filme+1)
              {
                caso 1:
                  escreva("C	  |", transforma(Matriz_Filme01[2][0]),"|		|", transforma(Matriz_Filme01[2][1]),"|		|", transforma(Matriz_Filme01[2][2]),"|		|", transforma(Matriz_Filme01[2][3]),"|		|", transforma(Matriz_Filme01[2][4]),"|\n")
                  pare
                caso 2:
                  escreva("C	  |", transforma(Matriz_Filme02[2][0]),"|		|", transforma(Matriz_Filme02[2][1]),"|		|", transforma(Matriz_Filme02[2][2]),"|		|", transforma(Matriz_Filme02[2][3]),"|		|", transforma(Matriz_Filme02[2][4]),"|\n")
                  pare
                caso 3:
                  escreva("C	  |", transforma(Matriz_Filme03[2][0]),"|		|", transforma(Matriz_Filme03[2][1]),"|		|", transforma(Matriz_Filme03[2][2]),"|		|", transforma(Matriz_Filme03[2][3]),"|		|", transforma(Matriz_Filme03[2][4]),"|\n")
                  pare
                caso 4:
                  escreva("C	  |", transforma(Matriz_Filme04[2][0]),"|		|", transforma(Matriz_Filme04[2][1]),"|		|", transforma(Matriz_Filme04[2][2]),"|		|", transforma(Matriz_Filme04[2][3]),"|		|", transforma(Matriz_Filme04[2][4]),"|\n")
                  pare
                caso 5:
                  escreva("C	  |", transforma(Matriz_Filme05[2][0]),"|		|", transforma(Matriz_Filme05[2][1]),"|		|", transforma(Matriz_Filme05[2][2]),"|		|", transforma(Matriz_Filme05[2][3]),"|		|", transforma(Matriz_Filme05[2][4]),"|\n")
                  pare
              }
              escreva("	   -------------------		 -------------------		 --------------------		 --------------------		 --------------------\n\n")

              escreva("	   -------------------		 -------------------		 --------------------		 --------------------		 --------------------\n")
              escolha(filme+1)
              {
                caso 1:
                  escreva("D	  |", transforma(Matriz_Filme01[3][0]),"|		|", transforma(Matriz_Filme01[3][1]),"|		|", transforma(Matriz_Filme01[3][2]),"|		|", transforma(Matriz_Filme01[3][3]),"|		|", transforma(Matriz_Filme01[3][4]),"|\n")
                  pare
                caso 2:
                  escreva("D	  |", transforma(Matriz_Filme02[3][0]),"|		|", transforma(Matriz_Filme02[3][1]),"|		|", transforma(Matriz_Filme02[3][2]),"|		|", transforma(Matriz_Filme02[3][3]),"|		|", transforma(Matriz_Filme02[3][4]),"|\n")
                  pare
                caso 3:
                  escreva("D	  |", transforma(Matriz_Filme03[3][0]),"|		|", transforma(Matriz_Filme03[3][1]),"|		|", transforma(Matriz_Filme03[3][2]),"|		|", transforma(Matriz_Filme03[3][3]),"|		|", transforma(Matriz_Filme03[3][4]),"|\n")
                  pare
                caso 4:
                  escreva("D	  |", transforma(Matriz_Filme04[3][0]),"|		|", transforma(Matriz_Filme04[3][1]),"|		|", transforma(Matriz_Filme04[3][2]),"|		|", transforma(Matriz_Filme04[3][3]),"|		|", transforma(Matriz_Filme04[3][4]),"|\n")
                  pare
                caso 5:
                  escreva("D	  |", transforma(Matriz_Filme05[3][0]),"|		|", transforma(Matriz_Filme05[3][1]),"|		|", transforma(Matriz_Filme05[3][2]),"|		|", transforma(Matriz_Filme05[3][3]),"|		|", transforma(Matriz_Filme05[3][4]),"|\n")
                  pare
              }
              escreva("	   -------------------		 -------------------		 --------------------		 --------------------		 --------------------\n\n")

              escreva("	   -------------------		 -------------------		 --------------------		 --------------------		 --------------------\n")
              escolha(filme+1)
              {
                caso 1:
                  escreva("E	  |", transforma(Matriz_Filme01[4][0]),"|		|", transforma(Matriz_Filme01[4][1]),"|		|", transforma(Matriz_Filme01[4][2]),"|		|", transforma(Matriz_Filme01[4][3]),"|		|", transforma(Matriz_Filme01[4][4]),"|\n")
                  pare
                caso 2:
                  escreva("E	  |", transforma(Matriz_Filme02[4][0]),"|		|", transforma(Matriz_Filme02[4][1]),"|		|", transforma(Matriz_Filme02[4][2]),"|		|", transforma(Matriz_Filme02[4][3]),"|		|", transforma(Matriz_Filme02[4][4]),"|\n")
                  pare
                caso 3:
                  escreva("E	  |", transforma(Matriz_Filme03[4][0]),"|		|", transforma(Matriz_Filme03[4][1]),"|		|", transforma(Matriz_Filme03[4][2]),"|		|", transforma(Matriz_Filme03[4][3]),"|		|", transforma(Matriz_Filme03[4][4]),"|\n")
                  pare
                caso 4:
                  escreva("E	  |", transforma(Matriz_Filme04[4][0]),"|		|", transforma(Matriz_Filme04[4][1]),"|		|", transforma(Matriz_Filme04[4][2]),"|		|", transforma(Matriz_Filme04[4][3]),"|		|", transforma(Matriz_Filme04[4][4]),"|\n")
                  pare
                caso 5:
                  escreva("E	  |", transforma(Matriz_Filme05[4][0]),"|		|", transforma(Matriz_Filme05[4][1]),"|		|", transforma(Matriz_Filme05[4][2]),"|		|", transforma(Matriz_Filme05[4][3]),"|		|", transforma(Matriz_Filme05[4][4]),"|\n")
                  pare
              }
              escreva("	   -------------------		 -------------------		 --------------------		 --------------------		 --------------------\n\n")

            //Escolhendo a poltrona
              faca
                {
                  escreva("Digite qual fileira deseja: (A, B, C, D ou E)\n")    
                  escreva("Resposta: ")
                  leia(aux)
                } enquanto((aux != 'A') e (aux != 'a') e (aux != 'B') e (aux != 'b') e (aux != 'C') e (aux != 'c') e (aux != 'D') e (aux != 'd') e (aux != 'E') e (aux != 'e'))
                
                faca
                {
                  escreva("Digite qual coluna deseja: (1, 2, 3, 4 ou 5)\n")
                  escreva("Resposta: ")
                  leia(j)
                } enquanto((j < 1) ou (j > 5))

              //Transformando as letras em números
                escolha(aux)
                {
                  caso 'A':
                  caso 'a':
                    i = 0
                    pare
                  caso 'B':
                  caso 'b':
                    i = 1
                    pare
                  caso 'C':
                  caso 'c':
                    i = 2
                    pare
                  caso 'D':
                  caso 'd':
                    i = 3
                    pare
                  caso 'E':
                  caso 'e':
                    i = 4
                    pare 
                                                 
                }
              //Verificando se a cadeira já está reservada
                  escolha(filme+1)
                  {
                    caso 1:
                      se(Matriz_Filme01[i][j-1] == 1)
                        {
                          escreva("Poltrona já reservada! Por gentileza, escolha outra!")
                          pausar_tela()
                          verifica = 0
                        }
                      se(Matriz_Filme01[i][j-1] == 0)
                        {
                          escreva("Parabéns! Você escolheu a poltrona ", Texto.caixa_alta(aux), j, ".\n")
                          pausar_tela()
                          Matriz_Filme01[i][j-1] = 1
                          verifica = 1
                        }
                      pare
                    caso 2:
                      se(Matriz_Filme02[i][j-1] == 1)
                        {
                          escreva("Poltrona já reservada! Por gentileza, escolha outra!")
                          pausar_tela()
                          verifica = 0
                        }
                      se(Matriz_Filme02[i][j-1] == 0)
                        {
                          escreva("Parabéns! Você escolheu a poltrona ", Texto.caixa_alta(aux), j, ".\n")
                          pausar_tela()
                          Matriz_Filme02[i][j-1] = 1
                          verifica = 1
                        }
                      pare
                    caso 3:
                      se(Matriz_Filme03[i][j-1] == 1)
                        {
                          escreva("Poltrona já reservada! Por gentileza, escolha outra!")
                          pausar_tela()
                          verifica = 0
                        }
                      se(Matriz_Filme03[i][j-1] == 0)
                        {
                          escreva("Parabéns! Você escolheu a poltrona ", Texto.caixa_alta(aux), j, ".\n")
                          pausar_tela()
                          Matriz_Filme03[i][j-1] = 1
                          verifica = 1
                        }
                      pare
                    caso 4:
                      se(Matriz_Filme04[i][j-1] == 1)
                        {
                          escreva("Poltrona já reservada! Por gentileza, escolha outra!")
                          pausar_tela()
                          verifica = 0
                        }
                      se(Matriz_Filme04[i][j-1] == 0)
                        {
                          escreva("Parabéns! Você escolheu a poltrona ", Texto.caixa_alta(aux), j, ".\n")
                          pausar_tela()
                          Matriz_Filme04[i][j-1] = 1
                          verifica = 1
                        }
                      pare                  
                    caso 5:
                      se(Matriz_Filme05[i][j-1] == 1)
                        {
                          escreva("Poltrona já reservada! Por gentileza, escolha outra!")
                          pausar_tela()
                          verifica = 0
                        }
                      se(Matriz_Filme05[i][j-1] == 0)
                        {
                          escreva("Parabéns! Você escolheu a poltrona ", Texto.caixa_alta(aux), j, ".\n")
                          pausar_tela()
                          Matriz_Filme05[i][j-1] = 1
                          verifica = 1
                        }
                      pare                    
                  }       
          } enquanto(verifica != 1)
          retorne verifica
        }
        
      //Transforma número em texto
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
          funcao cadeia transforma(inteiro numero)
          {
            //Variáveis
              cadeia status

            //Transformando
              //Poltrona Reservada
                se(numero == 1)
                  status = "     Reservado     "
              //Poltrona Vaga  
                se(numero == 0)
                  status = "                   "

            retorne status
          }

      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
    /*=================================================================================*/

    //FUNÇÃO BOMBONIERE
    /*=================================================================================*/
      funcao bomboniere()
      {
        inteiro opcao, quantidade, saida, i, subitem
        real total
        
        total = 0
        subitem = 0
        //Zerando matriz cliente
          zerando_matriz_cliente()
        faca
        {
          //Logo
            logo()     

          //Titulo Bomboniere  
            titulo_bomboniere()

          //Menu Produtos
            opcao = produtos_bomboniere()
            escreva("Qual a quantidade? ")
            leia(quantidade)

            Matriz_produtos_cliente[opcao][0] = Matriz_produtos_cliente[opcao][0] + quantidade
            Matriz_produtos_cliente[opcao][1] = Matriz_produtos_cliente[opcao][1] + quantidade * Matriz_dados_produtos[opcao][0]

            Matriz_dados_produtos[opcao][1] =  Matriz_produtos_cliente[opcao][0]

            faca
            {
              escreva("\nDeseja comprar mais?\n")
              escreva("1 - Sim\n")
              escreva("2 - Não\n")
              escreva("Resposta: ")
              leia(saida)
              pausar_tela()
            } enquanto((saida != 1) e (saida != 2))


            se(saida == 2)
            {
              logo()
              titulo_bomboniere()
              escreva("\nVocê comprou:\n")
              para(i = 0; i < QTD_PRODUTO; i++)
              {
                se(Matriz_produtos_cliente[i][0] != 0)
                {
                  escreva(" - ", Matriz_produtos_cliente[i][0]," ", Matriz_nome_produto[i], " = R$ ", Matriz_produtos_cliente[i][1],"\n")
                  total = total + Matriz_produtos_cliente[i][1]
                  subitem = subitem + Matriz_produtos_cliente[i][0]
                }
              }
              
              escreva("\nTotal de subitens: ", subitem,"\n")
              escreva("Total a pagar: R$", total,"\n")
              
              pausar_tela()
            }
        }enquanto(saida != 2)
      }
    
  /*=================================================================================*/

    //FUNÇÃO SALDO
    /*=================================================================================*/
      funcao saldo()
      {
        inteiro opcao

        //Logo
        logo()
        titulo_saldo()
        
        escreva("Qual relatório deseja ver?\n")
        escreva("1 - Ingressos\n")
        escreva("2 - Bomboniere\n\n")
        escreva("Resposta: ")
        leia(opcao)

         //Função saldo ingresso
         se(opcao == 1)
          saldo_ingresso()
         //Função saldo bomboniere
         se(opcao == 2)
         saldo_bomboniere()
      }

      //FUNÇÃO SALDO INGRESSO
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao saldo_ingresso()
        {
          //Variáveis
            inteiro i, total_geral, total_meias, total_inteiras

          //Logo
            logo()

          //Titulo
            titulo_saldo()
            escreva("---------------------------------------------------------------------------\n")
            escreva("                                  POR FILME                                \n")
            escreva("---------------------------------------------------------------------------\n\n")

          //Zerando contador
            total_geral = 0
            total_meias = 0
            total_inteiras = 0

        
          //Saída de dados
            para(i = 0; i < QTD_FILMES; i++)
            {
              total_meias = Matriz_contagem_ingressos[i][1] + total_meias
              total_inteiras = Matriz_contagem_ingressos[i][2] + total_inteiras
              total_geral = total_geral + total_meias + total_inteiras

              escreva("---------------------------------------------------------------------------\n")
              escreva("Filme ", i + 1,": ", Matriz_nome_filmes[i][0],"\n")
              escreva("---------------------------------------------------------------------------\n")
              escreva("Ingressos vendidos: ", Matriz_contagem_ingressos[i][1]+Matriz_contagem_ingressos[i][2],"\n")
              escreva("   Entrada meia vendidas: ", Matriz_contagem_ingressos[i][1],"\n")
              escreva("   Total de entradas meia: R$ ", Matriz_contagem_ingressos[i][1]*PRECO_MEIA,"\n\n" )
              escreva("   Entrada cheia: ", Matriz_contagem_ingressos[i][2],"\n")
              escreva("   Total de entradas meia: R$ ", Matriz_contagem_ingressos[i][2]*PRECO_INTEIRA,"\n\n")
              escreva("Total vendido: R$ ", Matriz_contagem_ingressos[i][1]*PRECO_MEIA + Matriz_contagem_ingressos[i][2]*PRECO_INTEIRA,"\n\n")
              escreva("---------------------------------------------------------------------------\n\n")
              pausar_tela()
            }

              escreva("---------------------------------------------------------------------------\n")
              escreva("                                 TOTAL\n")
              escreva("---------------------------------------------------------------------------\n")
              escreva("Total de meias entradas vendidas: ", total_meias,"\n")
              escreva("Total de meias entradas arrecadado: R$", total_meias * PRECO_MEIA,"\n\n")
              escreva("Total de entradas inteiras vendidas: ", total_inteiras,"\n")
              escreva("Total de entradas inteiras arrecadado: R$", total_inteiras * PRECO_INTEIRA,"\n\n")
              escreva("Total de entradas vendidas: ", total_geral,"\n")
              escreva("Total de entradas arrecadado: R$",total_meias * PRECO_MEIA +  total_inteiras * PRECO_INTEIRA,"\n\n")
              escreva("---------------------------------------------------------------------------\n\n")

            pausar_tela()
        }
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

      //FUNÇÃO SALDO BOMBONIERE
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao saldo_bomboniere()
        {
          inteiro i, total
          real valores

          total = 0
          valores = 0

          logo()
          titulo_saldo()
            escreva("---------------------------------------------------------------------------\n")
            escreva("                                   PRODUTOS                                \n")
            escreva("---------------------------------------------------------------------------\n\n")

          para(i = 0; i < QTD_PRODUTO; i++)
          {
            escreva("---------------------------------------------------------------------------\n")
            escreva("Produto: ", Matriz_nome_produto[i],"\n")
            escreva("Quantidade vendida: ", Matriz_dados_produtos[i][1], "\n")
            escreva("Quantia obtida: R$", Matriz_dados_produtos[i][0] * Matriz_dados_produtos[i][1], "\n")
            escreva("---------------------------------------------------------------------------\n\n")

            valores = Matriz_dados_produtos[i][0] * Matriz_dados_produtos[i][1] + valores
            total = Matriz_dados_produtos[i][1] + total
            pausar_tela()
          }

          escreva("---------------------------------------------------------------------------\n")
          escreva("                                 TOTAL\n")
          escreva("---------------------------------------------------------------------------\n")
          escreva("Quantidade total vendida: ", total,"\n")
          escreva("Quantia total obtida: R$", valores,"\n")
          escreva("---------------------------------------------------------------------------\n\n")
          pausar_tela()
        }
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

    /*=================================================================================*/

    //FUNÇÕES DE COMPLETAR MATRIZ
    /*=================================================================================*/
      //COMPLETANDO A MATRIZ 'Matriz_nome_filmes'
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao cadeia nomes_filmes(inteiro i, inteiro j)
        {
          cadeia resposta
          
          //Nomes dos filmes
            se(j == 0)
            {
              escolha(i + 1)
              {
                caso 1:
                  resposta = "Superman: O Legado"
                  pare
                caso 2:
                  resposta = "Capitão Améica: Admirável Mundo Novo"
                  pare
                caso 3:
                  resposta = "Lilo & Stitch"
                  pare
                caso 4:
                  resposta = "Lobisomem"
                  pare
                caso 5:
                  resposta = "O Agente Secreto"
                  pare
              }       
            }
          //Horários
            se(j == 1)
            {
              escolha(i + 1)
              {
                caso 1:
                  resposta = "14:00"
                  pare
                caso 2:
                  resposta = "16:00"
                  pare
                caso 3:
                  resposta = "18:00"
                  pare
                caso 4:
                  resposta = "20:00"
                  pare
                caso 5:
                  resposta = "22:00"
                  pare
              }
            }
          retorne resposta
        }
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

      //COMPLETANDO AS MATRIZES DAS POLTRONAS
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao completa_matriz_poltrona()
        {
          //Variáveis
            inteiro i, j
          //Completando as matrizes
          para(i = 0; i < FILEIRA_POLTRONA; i++)
            para(j = 0; j < COLUNA_POLTRONA; j++)
            {
              Matriz_Filme01[i][j] = 0
              Matriz_Filme02[i][j] = 0
              Matriz_Filme03[i][j] = 0
              Matriz_Filme04[i][j] = 0
              Matriz_Filme05[i][j] = 0
            }
        }

      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

      //COMPLETANDO AS MATRIZES DE PRODUTOS
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao completa_matriz_produto()
        {
          //Variáveis
            inteiro i

          //Populando a matriz dos nomes dos produtos
            para(i = 0; i < QTD_PRODUTO; i++)
              escolha(i)
              {
                caso 0:
                  Matriz_nome_produto[i] = "Combo (balde de pipoca + Refrigerante grande)"
                  pare
                caso 1:
                  Matriz_nome_produto[i] = "Pipoca pequena"
                  pare
                caso 2:
                  Matriz_nome_produto[i] = "Pipoca média"
                  pare
                caso 3:
                  Matriz_nome_produto[i] = "Pipoca grande"
                  pare                
                caso 4:
                  Matriz_nome_produto[i] = "Refrigerante pequeno"
                  pare                
                caso 5:
                  Matriz_nome_produto[i] = "Refrigerante médio"
                  pare                
                caso 6:
                  Matriz_nome_produto[i] = "Refrigerante grande"
                  pare      
                caso 7:
                  Matriz_nome_produto[i] = "Nachos com queijo"
                  pare                          
                caso 8:
                  Matriz_nome_produto[i] = "Cachorro quente"
                  pare
                caso 9:
                  Matriz_nome_produto[i] = "Chocolate"
                  pare              
              }

          //Populando a matriz dados dos produtos
            para(i = 0; i < QTD_PRODUTO; i++)
            escolha(i)
            {
              caso 0:
                Matriz_dados_produtos[i][0] = 50
                Matriz_dados_produtos[i][1] = 0
                pare
              caso 1:
                Matriz_dados_produtos[i][0] = 15
                Matriz_dados_produtos[i][1] = 0
                pare
              caso 2:
                Matriz_dados_produtos[i][0] = 25
                Matriz_dados_produtos[i][1] = 0
                pare                
              caso 3:
                Matriz_dados_produtos[i][0] = 35
                Matriz_dados_produtos[i][1] = 0
                pare                
              caso 4:
                Matriz_dados_produtos[i][0] = 10
                Matriz_dados_produtos[i][1] = 0
                pare                
              caso 5:
                Matriz_dados_produtos[i][0] = 15
                Matriz_dados_produtos[i][1] = 0
                pare                
              caso 6:
                Matriz_dados_produtos[i][0] = 20
                Matriz_dados_produtos[i][1] = 0
                pare              
              caso 7:
                Matriz_dados_produtos[i][0] = 30
                Matriz_dados_produtos[i][1] = 0
                pare                
              caso 8:
                Matriz_dados_produtos[i][0] = 18
                Matriz_dados_produtos[i][1] = 0
                pare                
              caso 9:
                Matriz_dados_produtos[i][0] = 12
                Matriz_dados_produtos[i][1] = 0
                pare                
            }
        }
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

      //COMPLETANDO A MATRIZ DAS VENDAS DE INGRESSOS
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao completa_matriz_venda_ingresso()
        {
          //Variáveis
          inteiro i, j

          //Populando a matriz
            para(i = 0; i < QTD_FILMES; i++)
              para(j = 0; j < 3; j++)  // CORREÇÃO: j++ em vez de i++
            {
              se(j == 0)
              {
                Matriz_contagem_ingressos[i][0] = (i + 1)
              }

              se(j != 0)
              {
                Matriz_contagem_ingressos[i][j] = 0
              }
            }
        }
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

      //Zerando A MATRIZ DOS PRODUTOS CLIENTE
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        funcao zerando_matriz_cliente()
        {
          inteiro i, j

          //Populando a matriz
          para(i = 0; i < QTD_PRODUTO; i++)
            para(j = 0; j < 2; j++)
              Matriz_produtos_cliente[i][j]=0
        }
      /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
      
    /*=================================================================================*/
  /*-----------------------------------------------------------------------------------*/

}

