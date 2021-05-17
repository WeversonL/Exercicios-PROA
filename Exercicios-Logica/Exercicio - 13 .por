programa
{

	inclua biblioteca Matematica --> mat
	real num[10], soma = 0, soma_menores = 0, soma_total = 0
	inteiro contador_variavel = 0
	
	funcao inicio()
	{
		para (inteiro contador = 1; contador <=10; contador++)
		{
			escreva("Informe o "+contador+"° valor: ")
			leia(num[contador_variavel])
			contador_variavel++
		}

		validacao()
		
	}

	funcao validacao()
	{
		para (inteiro contador = 0; contador <= 9; contador++)
		{
			se (num[contador] < 40)
			{
				soma_menores += num[contador]
			}

			senao se(num[contador] > 40)
			{
				soma += num[contador]
			}
		}

		soma_total = soma_menores + soma

		escreva("\nSoma dos números > 40: " + soma + "\n\nA soma dos números < 40 são: " + soma_menores +"\n\nA soma total dos valores é: " + soma_total + "\n")

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */