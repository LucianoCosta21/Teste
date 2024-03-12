programa
{
	inclua biblioteca Matematica --> mat
/*
2) Uma contabilidade precisa calcular o Imposto de Renda dos funcionários de uma empresa.
Dada a tabela do Imposto de Renda abaixo, solicite o salário de um funcionário e calcule o valor do imposto de renda a pagar, tendo efetuado a dedução e informe para o contador o valor da base de cálculo, a alíquota aplicada, o valor deduzido e o imposto a pagar.

Obs.: A parcela a deduzir deve ser multiplicada pelo número de dependentes.

IR na fonte
--------------------------------------------------------------------------------------
Base de cálculo¹ (R$)		Alíquotas em %		Parcela a deduzir do IR (R$)
--------------------------------------------------------------------------------------
Até 2.112,00			0,00			0,00
De 2.112,01 até 2.826,65	7,50			158,40
De 2.826,66 até 3.751,05	15,00		370,40
De 3.751,06 até 4.664,68	22,50		651,73
Acima de 4.664,68		27,50		884,96

Exemplo:

Entrada:

Salário: R$ 3.500,00
Número de dependentes: 1

Processamento:

(3.500 * 0,15) - (370,40 *1) = 154,60

Saída:

Base de Cálculo: R$ 3.500,00
Alíquota IR: 15,00%
Parcela a deduzir: R$ 370,40
Imposto a pagar: R$ 154,60

Obs.: Caso o valor do imposto seja negativo, apresentar valor a pagar igual a zero.
Obs2.: O exercício acima é apenas para treinamento e não representa o cálculo do imposto oficial.

*/


	
	funcao inicio()
	{
		real salario, numeroDepend, result
		real baseCalc1, baseCalc2, baseCalc3, baseCalc4
		real aliq1, aliq2, aliq3, aliq4, aliq5
		real parcelaDed1, parcelaDed2, parcelaDed3, parcelaDed4, parcelaDed5
		real arredResult
		cadeia nome

		

		aliq1 = 0.000
		aliq2 = 0.075
		aliq3 = 0.150
		aliq4 = 0.225
		aliq5 = 0.275
		/*
		
		aliq1 = 0.00
		aliq2 = 7.50
		aliq3 = 15.00
		aliq4 = 22.50
		aliq5 = 27.50
		*/
		

		parcelaDed1 = 0.00
		parcelaDed2 = 158.40
		parcelaDed3 = 370.40
		parcelaDed4 = 651.73
		parcelaDed5 = 884.96

		

		//ENTRADA

		escreva("Informe o seu Nome: ")
		leia(nome)
		escreva("Informe o seu salário: ")
		leia(salario)
		escreva("Informe o número de dependentes: ")
		leia(numeroDepend)

		

		//PROCESSAMENTO
		se(salario <= 2112.0){
			result = (salario * aliq1) - (parcelaDed1 * numeroDepend)
			

			se(result < 0){

				escreva("Nome: " + nome)
				escreva("\nBase de Cálculo: R$" + salario )
				escreva("\nAlíquota IR: 00,00%")
				escreva("\nParcela a deduzir: R$ 0,00")
				escreva("\nImposto a pagar: R$ 0,00 ")
			} senao {
				arredResult = mat.arredondar(result, 5)
				escreva("Nome: " + nome)
				escreva("\nbase de Cálculo: R$" + salario )
				escreva("\nAlíquota IR: 00,00%")
				escreva("\nParcela a deduzir: R$ 0,00")
				escreva("\nImposto a pagar: R$ " + arredResult)
					}
			
			
		} senao se ((salario >= 2112.01) e (salario <= 2826.65)){

				result = (salario * aliq2) - (parcelaDed2 * numeroDepend)
			
			se(result < 0){
				escreva("Nome: " + nome)
				escreva("\nBase de Cálculo: R$ " + salario )
				escreva("\nAlíquota IR: 00,00%")
				escreva("\nParcela a deduzir: R$ 0,00")
				escreva("\nImposto a pagar: R$ 0,00 ")
			} senao {
				escreva("Nome: " + nome)
				arredResult = mat.arredondar(result, 5)
				escreva("\nBase de Cálculo: R$ " + salario )
				escreva("\nAlíquota IR: 7,50%")
				escreva("\nParcela a deduzir: R$ 158,40")
				escreva("\nImposto a pagar: R$ " + arredResult)
					}

			
			
			
		} senao se (salario >= 2826.66 e salario <= 3751.05){
			
			result = (salario * aliq3) - (parcelaDed3 * numeroDepend)
			
			se(result < 0){
				escreva("Nome: " + nome)
				escreva("\nBase de Cálculo: R$ " + salario )
				escreva("\nAlíquota IR: 00,00%")
				escreva("\nParcela a deduzir: R$ 0,00")
				escreva("\nImposto a pagar: R$ 0,00 ")
				} senao {
					escreva("Nome: " + nome)
					arredResult = mat.arredondar(result, 5)
					escreva("\nBase de Cálculo: R$" + salario )
					escreva("\nAlíquota IR: 15,00%")
					escreva("\nParcela a deduzir: R$ 370,40")
					escreva("\nImposto a pagar: R$ " + arredResult)
					}
			
			
			
		} senao se (salario >= 3751.06 e salario <= 4664.68){

			result = (salario * aliq4) - (parcelaDed4 * numeroDepend)

			se(result < 0){
				escreva("Nome: " + nome)
				escreva("\nBase de Cálculo: R$ " + salario )
				escreva("\nAlíquota IR: 00,00%")
				escreva("\nParcela a deduzir: R$ 0,00")
				escreva("\nImposto a pagar: R$ 0,00 ")}
			senao{
				escreva("Nome: " + nome)
				arredResult = mat.arredondar(result, 5)
				escreva("\nBase de Cálculo: R$ " + salario )
				escreva("\nAlíquota IR: 22,00%")
				escreva("\nParcela a deduzir: R$ 651,73")
				escreva("\nImposto a pagar: R$ " + arredResult)
				}	
			
			
		} senao{
			result = (salario * aliq5) - (parcelaDed5 * numeroDepend)
			
			se(result < 0){
				escreva("Nome: " + nome)
				escreva("\nBase de Cálculo: R$ " + salario )
				escreva("\nAlíquota IR: 00,00%")
				escreva("\nParcela a deduzir: R$ 0,00")
				escreva("\nImposto a pagar: R$ 0,00 ")}
			senao{
				escreva("Nome: " + nome)
				arredResult = mat.arredondar(result, 5)
				escreva("\nBase de Cálculo: R$ " + salario )
				escreva("\nAlíquota IR: 27,50%")
				escreva("\na deduzir: R$ 884,96")
				escreva("\nImposto a pagar: R$ " + arredResult)}
						
				}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3351; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {result, 47, 30, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */