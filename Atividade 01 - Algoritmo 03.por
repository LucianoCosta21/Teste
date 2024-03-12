programa
{		/*
		3) Crie um algoritmo que solicite o dia, o mês e o ano e informe se a data é válida ou inválida.
		Considere o mês de fevereiro com 28 dias.

		*/
	
	funcao inicio()
	
	{
		inteiro dia, mes, ano, data

		escreva("Informe o dia: ")
		leia(dia)
		escreva("Informe o mês: ")
		leia(mes)
		escreva("Informe o ano: ")
		leia(ano)

		escreva(dia + "/" + mes + "/" + ano)

		se(mes == 02){
			se(dia >= 1 e dia <= 28 e ano > 1900 e ano <= 2024){
			escreva("\nData válida")
			} senao{
				escreva("\nData inválida")
				}
		} senao se(dia >= 1 e dia <= 31 e mes >= 1 e mes <= 12 e ano >= 1900 e ano <= 2024){
			escreva("\nData válida")
		}senao{
			escreva("\nData inválida")
			 }
			
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 483; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */