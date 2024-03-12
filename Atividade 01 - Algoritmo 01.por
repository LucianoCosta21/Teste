programa
{
	inclua biblioteca Matematica --> mat

/*
1) Uma clínica tem necessidade de informar o IMC (Índice de Massa Corporal) dos seus pacientes.
Sabendo que o IMC se calcula da seguinte forma: divide-se o peso (em kg) pelo quadrado da altura (em metros), crie um programa que faça o cálculo do IMC de um dado paciente.

Informe o IMC do paciente.
Caso o IMC seja menor que 18,5, informe que a classificação é Baixo peso.
Caso o IMC seja maior que 18,5 e menor que 24,9, informe que a classificação é Peso saudável.
Caso o IMC seja maior ou igual a 25 e menor que 29,9, informe que a classificação é Sobrepeso.
Caso o IMC seja maior ou igual a 30, informe que a classificação é Obesidade.

*/
	
	funcao inicio()

	{

		real peso, altura , imc
		real arredImc
		
		escreva("Informe o peso: ")
		leia(peso)
		escreva("Informe a altura: ")
		leia(altura) 

		imc = peso / (altura * altura)
		arredImc = mat.arredondar(imc, 1)
		
		escreva("O Imc é: " + arredImc)

		se(arredImc < 18.5){
			escreva("\nClassificação: abaixo do peso!")
			
		} senao se (arredImc > 18.5  e arredImc < 24.9){
			escreva("\nClassificação: peso saudável!")
		} senao se (arredImc >= 25 e arredImc <= 29.9){
			escreva("\nClassificação: sobrepeso!")
		} senao{
			escreva("\nClassificação: obesidade!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 764; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {peso, 21, 7, 4}-{altura, 21, 13, 6}-{imc, 21, 22, 3}-{arredImc, 22, 7, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */