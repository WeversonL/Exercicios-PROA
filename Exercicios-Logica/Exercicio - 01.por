programa
{
	
	funcao inicio()
	{
		// Função para identificação de número positivo, negativo ou zero

		real numero 

		escreva("Digite o número a ser avaliado: ")
		leia(numero)

		se (numero > 0)
		{
			escreva("\nO numero escolhido foi: " + numero + "\n\nEle é um número positivo\n")
		}

		senao se (numero < 0)
		{
			escreva("\nO numero escolhido foi: " + numero + "\n\nEle é um número negativo\n")
		}

		senao se (numer == 0)
		{
			escreva("\nO numero escolhido foi: " + numero + "\n\nEle é um número neutro\n")
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 521; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */