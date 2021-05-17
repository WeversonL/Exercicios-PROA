programa
{
	
	real num[2]
	
	funcao inicio()
	{
		escreva("Digite o 1° valor: ")
		leia(num[0])
		escreva("\nDigite o 2° valor: ")
		leia(num[1])

		se (num[0] == num[1])
		{
			escreva("\nOs valores são iguais!\n")
		}

		senao se (num[0] > num[1])
		{
			escreva("\nO primeiro número é maior!\n")
		}

		senao se (num[1] > num[0])
		{
			escreva("\nO segundo 1número é maior!\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 368; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */