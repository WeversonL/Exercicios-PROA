programa
{
	inclua biblioteca Matematica --> mat
	real produto = 8190, valor_desejado, valor_parcelas
	
	funcao inicio()
	{	
		escreva("Nosso mais novo drone custa R$8.190, parcelamos em até 15x sem juros.\n\nQual quantidade de parcelas deseja realizar? ")
		leia(valor_desejado)

		se (valor_desejado > 15)
		{
			escreva("\nO limite máximo são de 15x. Por favor, informe uma quantidade menor!\n")
		}

		senao
		{
			valor_parcelas = mat.arredondar(produto / valor_desejado, 2) 
			escreva("\nO valor das suas parcelas é de: R$ " + valor_parcelas + "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 478; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */